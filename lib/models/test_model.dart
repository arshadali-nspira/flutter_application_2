import 'package:isar/isar.dart';
part 'test_model.g.dart';

@collection
class TestModel {
  TestModel(); // 👈 REQUIRED

  Id id = Isar.autoIncrement;

  // --- FOREIGN KEYS ---
  @Index()
  int? ahChapterId;

  @Index()
  int? ahTopicId;
  // --------------------

  int? testId;
  String? testTypeName;

  factory TestModel.fromJson(Map<String, dynamic> json) => TestModel()
    ..testId = json['test_id']
    ..testTypeName = json['test_type_name'];
}
