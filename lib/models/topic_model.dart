import 'package:isar/isar.dart';
import 'video_model.dart';
import 'test_model.dart';
import 'resource_model.dart';

part 'topic_model.g.dart';

@collection
class TopicModel {
  TopicModel();

  Id id = Isar.autoIncrement;

  @Index()
  int? ahChapterId;

  int? ahTopicId;
  String? name;

  // --- JSON HOLDING VARIABLES ---
  @ignore
  List<VideoModel> jsonVideos = [];
  @ignore
  List<TestModel> jsonTests = [];
  @ignore
  List<ResourceModel> jsonResources = [];

  factory TopicModel.fromJson(Map<String, dynamic> json) {
    final obj = TopicModel()
      ..ahTopicId = json['ah_topic_id']
      ..name = json['name'];

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
