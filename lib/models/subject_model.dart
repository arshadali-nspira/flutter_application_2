import 'package:isar/isar.dart';
import 'chapter_model.dart';
part 'subject_model.g.dart';

@collection
class SubjectModel {
  SubjectModel();

  Id id = Isar.autoIncrement;
  int? ahSubjectId;
  String? name;

  @ignore
  List<ChapterModel> jsonChapters = [];

  factory SubjectModel.fromJson(Map<String, dynamic> json) {
    final obj = SubjectModel()
      ..ahSubjectId = json['ah_subject_id']
      ..name = json['name'];

    // Safety check: (json['chapters'] as List? ?? [])
    obj.jsonChapters = (json['chapters'] as List? ?? [])
        .map((c) => ChapterModel.fromJson(c))
        .toList();
    return obj;
  }
}
