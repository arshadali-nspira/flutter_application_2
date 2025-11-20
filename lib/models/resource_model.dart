import 'package:isar/isar.dart';
part 'resource_model.g.dart';

@collection
class ResourceModel {
  ResourceModel(); // 👈 REQUIRED

  Id id = Isar.autoIncrement;

  // --- FOREIGN KEYS ---
  @Index()
  int? ahChapterId;

  @Index()
  int? ahTopicId;
  // --------------------

  int? resourceId;
  String? resourceName;
  String? resourceType;

  factory ResourceModel.fromJson(Map<String, dynamic> json) => ResourceModel()
    ..resourceId = json['resource_id']
    ..resourceName = json['resource_name']
    ..resourceType = json['resource_type'];
}
