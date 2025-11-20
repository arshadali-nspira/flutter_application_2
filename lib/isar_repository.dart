import 'dart:convert';
import 'package:flutter/foundation.dart'; // Required for compute
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'models/class_model.dart';
import 'models/subject_model.dart';
import 'models/chapter_model.dart';
import 'models/topic_model.dart';
import 'models/video_model.dart';
import 'models/test_model.dart';
import 'models/resource_model.dart';

// ---------------------------------------------------------
// 1. TOP-LEVEL FUNCTION (Must be outside the class)
// This runs in the background isolate.
// ---------------------------------------------------------
ClassModel _parseClassData(String jsonStr) {
  final jsonMap = jsonDecode(jsonStr) as Map<String, dynamic>;
  return ClassModel.fromJson(jsonMap);
}

class IsarRepository {
  late Isar _isar;

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open([
      ClassModelSchema,
      SubjectModelSchema,
      ChapterModelSchema,
      TopicModelSchema,
      VideoModelSchema,
      TestModelSchema,
      ResourceModelSchema,
    ], directory: dir.path);
  }

  // ---------------------------------------------------------
  // 2. UPDATED LOAD JSON WITH ISOLATE
  // ---------------------------------------------------------
  Future<void> loadJson() async {
    try {
      // A. Load String (Fast, IO bound)
      final jsonStr = await rootBundle.loadString(
        'assets/data/class_data.json',
      );

      // B. Parse JSON in Background Isolate (Heavy CPU bound)
      // The UI will remain smooth even if the JSON is 10MB+
      final classModel = await compute(_parseClassData, jsonStr);

      // C. Write to Database (Fast, Isar is optimized)
      await _isar.writeTxn(() async {
        await _isar.clear(); // Clear old data

        // Iterate through the parsed object tree
        for (final subject in classModel.jsonSubjects) {
          await _isar.subjectModels.put(subject);

          for (final chapter in subject.jsonChapters) {
            // Set Foreign Key manually
            chapter.ahSubjectId = subject.ahSubjectId;
            await _isar.chapterModels.put(chapter);

            // --- 1. Direct Chapter Content ---
            if (chapter.jsonVideos.isNotEmpty) {
              for (final video in chapter.jsonVideos) {
                video.ahChapterId = chapter.ahChapterId;
                video.ahTopicId = null; // Direct Content
              }
              await _isar.videoModels.putAll(chapter.jsonVideos);
            }

            if (chapter.jsonTests.isNotEmpty) {
              for (final test in chapter.jsonTests) {
                test.ahChapterId = chapter.ahChapterId;
                test.ahTopicId = null;
              }
              await _isar.testModels.putAll(chapter.jsonTests);
            }

            if (chapter.jsonResources.isNotEmpty) {
              for (final res in chapter.jsonResources) {
                res.ahChapterId = chapter.ahChapterId;
                res.ahTopicId = null;
              }
              await _isar.resourceModels.putAll(chapter.jsonResources);
            }

            // --- 2. Topic Content ---
            for (final topic in chapter.jsonTopics) {
              topic.ahChapterId = chapter.ahChapterId;
              await _isar.topicModels.put(topic);

              if (topic.jsonVideos.isNotEmpty) {
                for (final video in topic.jsonVideos) {
                  video.ahChapterId = chapter.ahChapterId;
                  video.ahTopicId = topic.ahTopicId;
                }
                await _isar.videoModels.putAll(topic.jsonVideos);
              }

              if (topic.jsonTests.isNotEmpty) {
                for (final test in topic.jsonTests) {
                  test.ahChapterId = chapter.ahChapterId;
                  test.ahTopicId = topic.ahTopicId;
                }
                await _isar.testModels.putAll(topic.jsonTests);
              }

              if (topic.jsonResources.isNotEmpty) {
                for (final res in topic.jsonResources) {
                  res.ahChapterId = chapter.ahChapterId;
                  res.ahTopicId = topic.ahTopicId;
                }
                await _isar.resourceModels.putAll(topic.jsonResources);
              }
            }
          }
        }
      });
    } catch (e) {
      debugPrint("Error loading JSON: $e");
      // Handle error (rethrow or show UI feedback)
    }
  }

  // --- Basic Getters ---

  Future<List<SubjectModel>> getSubjects() async =>
      await _isar.subjectModels.where().findAll();

  Future<SubjectModel?> getSubjectByAhId(int ahSubjectId) async {
    return await _isar.subjectModels
        .filter()
        .ahSubjectIdEqualTo(ahSubjectId)
        .findFirst();
  }

  Future<List<ChapterModel>> getChaptersBySubject(int subjectId) async {
    return await _isar.chapterModels
        .filter()
        .ahSubjectIdEqualTo(subjectId)
        .findAll();
  }

  Future<ChapterModel?> getChapterByAhId(int ahChapterId) async {
    return await _isar.chapterModels
        .filter()
        .ahChapterIdEqualTo(ahChapterId)
        .findFirst();
  }

  // --- DIRECT CONTENT GETTERS ---

  Future<List<VideoModel>> getDirectChapterVideos(int chapterId) async {
    return await _isar.videoModels
        .filter()
        .ahChapterIdEqualTo(chapterId)
        .and()
        .ahTopicIdIsNull()
        .findAll();
  }

  Future<List<TestModel>> getDirectChapterTests(int chapterId) async {
    return await _isar.testModels
        .filter()
        .ahChapterIdEqualTo(chapterId)
        .and()
        .ahTopicIdIsNull()
        .findAll();
  }

  Future<List<ResourceModel>> getDirectChapterResources(int chapterId) async {
    return await _isar.resourceModels
        .filter()
        .ahChapterIdEqualTo(chapterId)
        .and()
        .ahTopicIdIsNull()
        .findAll();
  }

  // --- TOPIC CONTENT GETTERS ---

  Future<List<VideoModel>> getVideosByTopic(int topicId) async {
    return await _isar.videoModels.filter().ahTopicIdEqualTo(topicId).findAll();
  }

  Future<List<TestModel>> getTestsByTopic(int topicId) async {
    return await _isar.testModels.filter().ahTopicIdEqualTo(topicId).findAll();
  }

  Future<List<ResourceModel>> getResourcesByTopic(int topicId) async {
    return await _isar.resourceModels
        .filter()
        .ahTopicIdEqualTo(topicId)
        .findAll();
  }

  // --- INVERSE LOOKUP LOGIC ---

  Future<List<TopicModel>> getTopicsWithVideosByChapter(int chapterId) async {
    final allTopics = await _isar.topicModels
        .filter()
        .ahChapterIdEqualTo(chapterId)
        .findAll();
    if (allTopics.isEmpty) return [];

    final activeIds = await _isar.videoModels
        .filter()
        .ahChapterIdEqualTo(chapterId)
        .ahTopicIdIsNotNull()
        .distinctByAhTopicId()
        .ahTopicIdProperty()
        .findAll();

    final activeSet = activeIds.toSet();
    return allTopics.where((t) => activeSet.contains(t.ahTopicId)).toList();
  }

  Future<List<TopicModel>> getTopicsWithTestsByChapter(int chapterId) async {
    final allTopics = await _isar.topicModels
        .filter()
        .ahChapterIdEqualTo(chapterId)
        .findAll();
    if (allTopics.isEmpty) return [];

    final activeIds = await _isar.testModels
        .filter()
        .ahChapterIdEqualTo(chapterId)
        .ahTopicIdIsNotNull()
        .distinctByAhTopicId()
        .ahTopicIdProperty()
        .findAll();

    final activeSet = activeIds.toSet();
    return allTopics.where((t) => activeSet.contains(t.ahTopicId)).toList();
  }

  Future<List<TopicModel>> getTopicsWithResourcesByChapter(
    int chapterId,
  ) async {
    final allTopics = await _isar.topicModels
        .filter()
        .ahChapterIdEqualTo(chapterId)
        .findAll();
    if (allTopics.isEmpty) return [];

    final activeIds = await _isar.resourceModels
        .filter()
        .ahChapterIdEqualTo(chapterId)
        .ahTopicIdIsNotNull()
        .distinctByAhTopicId()
        .ahTopicIdProperty()
        .findAll();

    final activeSet = activeIds.toSet();
    return allTopics.where((t) => activeSet.contains(t.ahTopicId)).toList();
  }
}
