import 'package:isar/isar.dart';
import 'topic_model.dart';
import 'video_model.dart';
import 'test_model.dart';
import 'resource_model.dart';

part 'chapter_model.g.dart';

@collection
class ChapterModel {
  ChapterModel();

  Id id = Isar.autoIncrement;

  @Index()
  int? ahSubjectId;

  int? ahChapterId;
  String? name;

  // --- JSON HOLDING VARIABLES ---
  @ignore
  List<TopicModel> jsonTopics = [];
  @ignore
  List<VideoModel> jsonVideos = [];
  @ignore
  List<TestModel> jsonTests = [];
  @ignore
  List<ResourceModel> jsonResources = [];

  factory ChapterModel.fromJson(Map<String, dynamic> json) {
    final obj = ChapterModel()
      ..ahChapterId = json['ah_chapter_id']
      ..name = json['name'];

    // Safe parsing for all lists
    obj.jsonTopics = (json['topics'] as List? ?? [])
        .map((t) => TopicModel.fromJson(t))
        .toList();

    obj.jsonVideos = (json['videos'] as List? ?? [])
        .map((v) => VideoModel.fromJson(v))
        .toList();

    var testList = json['tests'] ?? json['test'];
    obj.jsonTests = (testList as List? ?? [])
        .map((t) => TestModel.fromJson(t))
        .toList();

    obj.jsonResources = (json['resources'] as List? ?? [])
        .map((r) => ResourceModel.fromJson(r))
        .toList();

    return obj;
  }
}
