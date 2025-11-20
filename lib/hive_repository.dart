import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'models/hive_models.dart';

class HiveRepository {
  static const boxName = 'classBox';

  /// Load local JSON into Hive and override existing data
  Future<void> loadJsonToHive() async {
    final jsonString = await rootBundle.loadString(
      'assets/data/class_data.json',
    );
    final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    final classModel = ClassModel.fromJson(jsonMap);

    final box = await Hive.openBox<ClassModel>(boxName);
    await box.clear();
    await box.put('classData', classModel);
  }

  Future<ClassModel?> getClassData() async {
    final box = await Hive.openBox<ClassModel>(boxName);
    return box.get('classData');
  }

  Future<List<SubjectModel>> getSubjects() async {
    final data = await getClassData();
    return data?.subjects ?? [];
  }

  Future<List<ChapterModel>> getChaptersBySubject(int subjectId) async {
    final subjects = await getSubjects();
    return subjects
        .firstWhere(
          (s) => s.ahSubjectId == subjectId,
          orElse: () => SubjectModel(ahSubjectId: 0, name: '', chapters: []),
        )
        .chapters;
  }

  Future<List<TopicModel>> getTopicsByChapter(int chapterId) async {
    final subjects = await getSubjects();
    final chapters = subjects.expand((s) => s.chapters).toList();
    final chapter = chapters.firstWhere(
      (c) => c.ahChapterId == chapterId,
      orElse: () => ChapterModel(ahChapterId: 0, name: '', topics: []),
    );
    return chapter.topics;
  }

  Future<List<TopicModel>> getTopicsWithVideosByChapter(int chapterId) async {
    final topics = await getTopicsByChapter(chapterId);
    return topics.where((t) => t.videos.isNotEmpty).toList();
  }

  Future<List<TopicModel>> getTopicsWithTestsByChapter(int chapterId) async {
    final topics = await getTopicsByChapter(chapterId);
    return topics.where((t) => t.tests.isNotEmpty).toList();
  }

  Future<List<TopicModel>> getTopicsWithResourcesByChapter(
    int chapterId,
  ) async {
    final topics = await getTopicsByChapter(chapterId);
    return topics.where((t) => t.resources.isNotEmpty).toList();
  }
}
