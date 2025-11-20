import 'package:isar/isar.dart';
part 'video_model.g.dart';

@collection
class VideoModel {
  VideoModel();

  Id id = Isar.autoIncrement;

  // --- FOREIGN KEYS ---
  @Index()
  int? ahChapterId;

  @Index()
  int? ahTopicId;
  // --------------------

  int? videoId;
  String? videoName;
  String? thumbnailUrl;

  // Optional: Map duration/media_url if needed later
  // String? mediaUrl;
  // int? duration;

  factory VideoModel.fromJson(Map<String, dynamic> json) {
    // 1. Handle inconsistent metadata keys (metadata vs meta_data)
    final meta = json['metadata'] ?? json['meta_data'];

    String? thumb;
    if (meta is Map) {
      // 2. Handle inconsistent thumbnail keys
      thumb =
          meta['imagethumbnail_url'] ??
          meta['image_thumb_nail'] ??
          meta['video_thumbnail_url'];
    }

    return VideoModel()
      ..videoId = json['video_id']
      ..videoName = json['video_name']
      // JSON now contains these IDs directly, mapping them ensures data even without manual linking
      ..ahChapterId = json['ah_chapter_id']
      ..ahTopicId = json['ah_topic_id']
      ..thumbnailUrl = thumb;
  }
}
