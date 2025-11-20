import 'package:hive/hive.dart';

part 'hive_models.g.dart';

@HiveType(typeId: 0)
class ClassModel extends HiveObject {
  @HiveField(0)
  int classId;

  @HiveField(1)
  String className;

  @HiveField(2)
  List<SubjectModel> subjects;

  ClassModel({
    required this.classId,
    required this.className,
    required this.subjects,
  });

  factory ClassModel.fromJson(Map<String, dynamic> json) => ClassModel(
    classId: json['class_id'],
    className: json['class_name'],
    subjects: (json['subjects'] as List)
        .map((e) => SubjectModel.fromJson(e))
        .toList(),
  );
}

@HiveType(typeId: 1)
class SubjectModel extends HiveObject {
  @HiveField(0)
  int ahSubjectId;

  @HiveField(1)
  String name;

  @HiveField(2)
  List<ChapterModel> chapters;

  SubjectModel({
    required this.ahSubjectId,
    required this.name,
    required this.chapters,
  });

  factory SubjectModel.fromJson(Map<String, dynamic> json) => SubjectModel(
    ahSubjectId: json['ah_subject_id'],
    name: json['name'],
    chapters: (json['chapters'] as List)
        .map((e) => ChapterModel.fromJson(e))
        .toList(),
  );
}

@HiveType(typeId: 2)
class ChapterModel extends HiveObject {
  @HiveField(0)
  int ahChapterId;

  @HiveField(1)
  String name;

  @HiveField(2)
  List<TopicModel> topics;

  ChapterModel({
    required this.ahChapterId,
    required this.name,
    required this.topics,
  });

  factory ChapterModel.fromJson(Map<String, dynamic> json) => ChapterModel(
    ahChapterId: json['ah_chapter_id'],
    name: json['name'],
    topics: (json['topics'] as List)
        .map((e) => TopicModel.fromJson(e))
        .toList(),
  );
}

@HiveType(typeId: 3)
class TopicModel extends HiveObject {
  @HiveField(0)
  int ahTopicId;

  @HiveField(1)
  String name;

  @HiveField(2)
  List<VideoModel> videos;

  @HiveField(3)
  List<ResourceModel> resources;

  @HiveField(4)
  List<TestModel> tests;

  TopicModel({
    required this.ahTopicId,
    required this.name,
    required this.videos,
    required this.resources,
    required this.tests,
  });

  factory TopicModel.fromJson(Map<String, dynamic> json) => TopicModel(
    ahTopicId: json['ah_topic_id'],
    name: json['name'],
    videos: (json['videos'] as List)
        .map((e) => VideoModel.fromJson(e))
        .toList(),
    resources: (json['resources'] as List)
        .map((e) => ResourceModel.fromJson(e))
        .toList(),
    tests: (json['tests'] as List).map((e) => TestModel.fromJson(e)).toList(),
  );
}

@HiveType(typeId: 4)
class VideoModel extends HiveObject {
  @HiveField(0)
  int videoId;

  @HiveField(1)
  String videoName;

  VideoModel({required this.videoId, required this.videoName});

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      VideoModel(videoId: json['video_id'], videoName: json['video_name']);
}

@HiveType(typeId: 5)
class ResourceModel extends HiveObject {
  @HiveField(0)
  int resourceId;

  @HiveField(1)
  String resourceName;

  @HiveField(2)
  String resourceType;

  ResourceModel({
    required this.resourceId,
    required this.resourceName,
    required this.resourceType,
  });

  factory ResourceModel.fromJson(Map<String, dynamic> json) => ResourceModel(
    resourceId: json['resource_id'],
    resourceName: json['resource_name'],
    resourceType: json['resource_type'],
  );
}

@HiveType(typeId: 6)
class TestModel extends HiveObject {
  @HiveField(0)
  int testId;

  @HiveField(1)
  String testTypeName;

  TestModel({required this.testId, required this.testTypeName});

  factory TestModel.fromJson(Map<String, dynamic> json) =>
      TestModel(testId: json['test_id'], testTypeName: json['test_type_name']);
}
