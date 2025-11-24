import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart'; // Required for compute
import 'package:isar/isar.dart';
import 'package:dio/dio.dart';

import '../models/class_model.dart';
import '../models/subject_model.dart';
import '../models/chapter_model.dart';
import '../models/topic_model.dart';
import '../models/video_model.dart';
import '../models/test_model.dart';
import '../models/resource_model.dart';

// ---------------------------------------------------------
// 1. TOP-LEVEL FUNCTION (Must be outside the class)
// This runs in the background isolate to prevent UI freeze.
// ---------------------------------------------------------
ClassModel _parseClassData(String jsonStr) {
  final jsonMap = jsonDecode(jsonStr) as Map<String, dynamic>;
  return ClassModel.fromJson(jsonMap);
}

class IsarRepository {
  late Isar _isar;
  final Dio _dio = Dio();

  // Initialize Isar
  Future<void> init() async {
    // Use ApplicationDocumentsDirectory for persistent storage on mobile

    _isar = await Isar.open([
      ClassModelSchema,
      SubjectModelSchema,
      ChapterModelSchema,
      TopicModelSchema,
      VideoModelSchema,
      TestModelSchema,
      ResourceModelSchema,
    ], directory: Directory.systemTemp.path);
  }

  // ---------------------------------------------------------
  // 2. DOWNLOAD AND PROCESS JSON
  // ---------------------------------------------------------
  Future<void> downloadAndProcessJson() async {
    const String url = 'https://www.jsonkeeper.com/b/GTWMR';

    try {
      debugPrint("🚀 Starting Download...");

      // A. Download String using Dio
      // CRITICAL: Use ResponseType.plain to get raw string for the Isolate.
      // If we don't, Dio parses JSON on the main thread, causing UI junk.
      final response = await _dio.get(
        url,
        options: Options(responseType: ResponseType.plain),
      );

      if (response.statusCode == 200) {
        final String jsonStr = response.data as String;
        debugPrint("✅ Download Complete. Starting Background Parsing...");

        // B. Parse JSON in Background Isolate (Heavy CPU bound)
        final classModel = await compute(_parseClassData, jsonStr);

        debugPrint("✅ Parsing Complete. Writing to Database...");

        // C. Write to Database (Fast, Isar is optimized)
        await _isar.writeTxn(() async {
          await _isar.clear(); // ⚠️ Clears all old data before writing new

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
        debugPrint("🎉 Database Update Complete.");
      } else {
        throw Exception("Failed to load data: ${response.statusCode}");
      }
    } catch (e) {
      debugPrint("❌ Error updating repository: $e");
      rethrow; // Let the UI handle the error
    }
  }

  // --- Helper to check if we even need to download ---
  Future<bool> hasData() async {
    return (await _isar.subjectModels.count()) > 0;
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
    final activeTopicIds = await _isar.videoModels
        .filter()
        .ahChapterIdEqualTo(chapterId)
        .ahTopicIdIsNotNull()
        .distinctByAhTopicId()
        .ahTopicIdProperty()
        .findAll();

    if (activeTopicIds.isEmpty) return [];

    return await _isar.topicModels
        .filter()
        .anyOf(activeTopicIds, (q, int? id) => q.ahTopicIdEqualTo(id))
        .findAll();
  }

  Future<List<TopicModel>> getTopicsWithTestsByChapter(int chapterId) async {
    final activeTopicIds = await _isar.testModels
        .filter()
        .ahChapterIdEqualTo(chapterId)
        .ahTopicIdIsNotNull()
        .distinctByAhTopicId()
        .ahTopicIdProperty()
        .findAll();

    if (activeTopicIds.isEmpty) return [];

    return await _isar.topicModels
        .filter()
        .anyOf(activeTopicIds, (q, int? id) => q.ahTopicIdEqualTo(id))
        .findAll();
  }

  Future<List<TopicModel>> getTopicsWithResourcesByChapter(
    int chapterId,
  ) async {
    final activeTopicIds = await _isar.resourceModels
        .filter()
        .ahChapterIdEqualTo(chapterId)
        .ahTopicIdIsNotNull()
        .distinctByAhTopicId()
        .ahTopicIdProperty()
        .findAll();

    if (activeTopicIds.isEmpty) return [];

    return await _isar.topicModels
        .filter()
        .anyOf(activeTopicIds, (q, int? id) => q.ahTopicIdEqualTo(id))
        .findAll();
  }
}
