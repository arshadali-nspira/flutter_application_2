import 'package:isar/isar.dart';
import 'subject_model.dart';
part 'class_model.g.dart';

@collection
class ClassModel {
  ClassModel();

  Id id = Isar.autoIncrement;
  int? classId;
  String? className;
  String? yearName;
  String? productName;
  String? name;

  @ignore
  List<SubjectModel> jsonSubjects = [];

  factory ClassModel.fromJson(Map<String, dynamic> json) {
    final obj = ClassModel()
      ..classId = json['class_id']
      ..className = json['class_name']
      ..yearName = json['year_name']
      ..productName = json['product_name']
      ..name = json['name'];

    // Safety check: (json['subjects'] as List? ?? [])
    obj.jsonSubjects = (json['subjects'] as List? ?? [])
        .map((s) => SubjectModel.fromJson(s))
        .toList();
    return obj;
  }
}
