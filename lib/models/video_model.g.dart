// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetVideoModelCollection on Isar {
  IsarCollection<VideoModel> get videoModels => this.collection();
}

const VideoModelSchema = CollectionSchema(
  name: r'VideoModel',
  id: -1916123326640997128,
  properties: {
    r'ahChapterId': PropertySchema(
      id: 0,
      name: r'ahChapterId',
      type: IsarType.long,
    ),
    r'ahTopicId': PropertySchema(
      id: 1,
      name: r'ahTopicId',
      type: IsarType.long,
    ),
    r'thumbnailUrl': PropertySchema(
      id: 2,
      name: r'thumbnailUrl',
      type: IsarType.string,
    ),
    r'videoId': PropertySchema(
      id: 3,
      name: r'videoId',
      type: IsarType.long,
    ),
    r'videoName': PropertySchema(
      id: 4,
      name: r'videoName',
      type: IsarType.string,
    )
  },
  estimateSize: _videoModelEstimateSize,
  serialize: _videoModelSerialize,
  deserialize: _videoModelDeserialize,
  deserializeProp: _videoModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'ahChapterId': IndexSchema(
      id: -6883679746196542154,
      name: r'ahChapterId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'ahChapterId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'ahTopicId': IndexSchema(
      id: -8783364212727983952,
      name: r'ahTopicId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'ahTopicId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _videoModelGetId,
  getLinks: _videoModelGetLinks,
  attach: _videoModelAttach,
  version: '3.1.0+1',
);

int _videoModelEstimateSize(
  VideoModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.thumbnailUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.videoName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _videoModelSerialize(
  VideoModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.ahChapterId);
  writer.writeLong(offsets[1], object.ahTopicId);
  writer.writeString(offsets[2], object.thumbnailUrl);
  writer.writeLong(offsets[3], object.videoId);
  writer.writeString(offsets[4], object.videoName);
}

VideoModel _videoModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = VideoModel();
  object.ahChapterId = reader.readLongOrNull(offsets[0]);
  object.ahTopicId = reader.readLongOrNull(offsets[1]);
  object.id = id;
  object.thumbnailUrl = reader.readStringOrNull(offsets[2]);
  object.videoId = reader.readLongOrNull(offsets[3]);
  object.videoName = reader.readStringOrNull(offsets[4]);
  return object;
}

P _videoModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _videoModelGetId(VideoModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _videoModelGetLinks(VideoModel object) {
  return [];
}

void _videoModelAttach(IsarCollection<dynamic> col, Id id, VideoModel object) {
  object.id = id;
}

extension VideoModelQueryWhereSort
    on QueryBuilder<VideoModel, VideoModel, QWhere> {
  QueryBuilder<VideoModel, VideoModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhere> anyAhChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'ahChapterId'),
      );
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhere> anyAhTopicId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'ahTopicId'),
      );
    });
  }
}

extension VideoModelQueryWhere
    on QueryBuilder<VideoModel, VideoModel, QWhereClause> {
  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> ahChapterIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ahChapterId',
        value: [null],
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause>
      ahChapterIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ahChapterId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> ahChapterIdEqualTo(
      int? ahChapterId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ahChapterId',
        value: [ahChapterId],
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> ahChapterIdNotEqualTo(
      int? ahChapterId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ahChapterId',
              lower: [],
              upper: [ahChapterId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ahChapterId',
              lower: [ahChapterId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ahChapterId',
              lower: [ahChapterId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ahChapterId',
              lower: [],
              upper: [ahChapterId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause>
      ahChapterIdGreaterThan(
    int? ahChapterId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ahChapterId',
        lower: [ahChapterId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> ahChapterIdLessThan(
    int? ahChapterId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ahChapterId',
        lower: [],
        upper: [ahChapterId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> ahChapterIdBetween(
    int? lowerAhChapterId,
    int? upperAhChapterId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ahChapterId',
        lower: [lowerAhChapterId],
        includeLower: includeLower,
        upper: [upperAhChapterId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> ahTopicIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ahTopicId',
        value: [null],
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> ahTopicIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ahTopicId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> ahTopicIdEqualTo(
      int? ahTopicId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ahTopicId',
        value: [ahTopicId],
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> ahTopicIdNotEqualTo(
      int? ahTopicId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ahTopicId',
              lower: [],
              upper: [ahTopicId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ahTopicId',
              lower: [ahTopicId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ahTopicId',
              lower: [ahTopicId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ahTopicId',
              lower: [],
              upper: [ahTopicId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> ahTopicIdGreaterThan(
    int? ahTopicId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ahTopicId',
        lower: [ahTopicId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> ahTopicIdLessThan(
    int? ahTopicId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ahTopicId',
        lower: [],
        upper: [ahTopicId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> ahTopicIdBetween(
    int? lowerAhTopicId,
    int? upperAhTopicId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ahTopicId',
        lower: [lowerAhTopicId],
        includeLower: includeLower,
        upper: [upperAhTopicId],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension VideoModelQueryFilter
    on QueryBuilder<VideoModel, VideoModel, QFilterCondition> {
  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      ahChapterIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ahChapterId',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      ahChapterIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ahChapterId',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      ahChapterIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ahChapterId',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      ahChapterIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ahChapterId',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      ahChapterIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ahChapterId',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      ahChapterIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ahChapterId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      ahTopicIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ahTopicId',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      ahTopicIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ahTopicId',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> ahTopicIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ahTopicId',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      ahTopicIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ahTopicId',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> ahTopicIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ahTopicId',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> ahTopicIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ahTopicId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      thumbnailUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'thumbnailUrl',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      thumbnailUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'thumbnailUrl',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      thumbnailUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumbnailUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      thumbnailUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'thumbnailUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      thumbnailUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'thumbnailUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      thumbnailUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'thumbnailUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      thumbnailUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'thumbnailUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      thumbnailUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'thumbnailUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      thumbnailUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'thumbnailUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      thumbnailUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'thumbnailUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      thumbnailUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumbnailUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      thumbnailUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'thumbnailUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> videoIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'videoId',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      videoIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'videoId',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> videoIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'videoId',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      videoIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'videoId',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> videoIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'videoId',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> videoIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'videoId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      videoNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'videoName',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      videoNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'videoName',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> videoNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'videoName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      videoNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'videoName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> videoNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'videoName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> videoNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'videoName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      videoNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'videoName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> videoNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'videoName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> videoNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'videoName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> videoNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'videoName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      videoNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'videoName',
        value: '',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      videoNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'videoName',
        value: '',
      ));
    });
  }
}

extension VideoModelQueryObject
    on QueryBuilder<VideoModel, VideoModel, QFilterCondition> {}

extension VideoModelQueryLinks
    on QueryBuilder<VideoModel, VideoModel, QFilterCondition> {}

extension VideoModelQuerySortBy
    on QueryBuilder<VideoModel, VideoModel, QSortBy> {
  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByAhChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahChapterId', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByAhChapterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahChapterId', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByAhTopicId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahTopicId', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByAhTopicIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahTopicId', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByThumbnailUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnailUrl', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByThumbnailUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnailUrl', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByVideoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoId', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByVideoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoId', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByVideoName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoName', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByVideoNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoName', Sort.desc);
    });
  }
}

extension VideoModelQuerySortThenBy
    on QueryBuilder<VideoModel, VideoModel, QSortThenBy> {
  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByAhChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahChapterId', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByAhChapterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahChapterId', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByAhTopicId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahTopicId', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByAhTopicIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahTopicId', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByThumbnailUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnailUrl', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByThumbnailUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnailUrl', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByVideoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoId', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByVideoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoId', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByVideoName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoName', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByVideoNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoName', Sort.desc);
    });
  }
}

extension VideoModelQueryWhereDistinct
    on QueryBuilder<VideoModel, VideoModel, QDistinct> {
  QueryBuilder<VideoModel, VideoModel, QDistinct> distinctByAhChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ahChapterId');
    });
  }

  QueryBuilder<VideoModel, VideoModel, QDistinct> distinctByAhTopicId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ahTopicId');
    });
  }

  QueryBuilder<VideoModel, VideoModel, QDistinct> distinctByThumbnailUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'thumbnailUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QDistinct> distinctByVideoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'videoId');
    });
  }

  QueryBuilder<VideoModel, VideoModel, QDistinct> distinctByVideoName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'videoName', caseSensitive: caseSensitive);
    });
  }
}

extension VideoModelQueryProperty
    on QueryBuilder<VideoModel, VideoModel, QQueryProperty> {
  QueryBuilder<VideoModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<VideoModel, int?, QQueryOperations> ahChapterIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ahChapterId');
    });
  }

  QueryBuilder<VideoModel, int?, QQueryOperations> ahTopicIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ahTopicId');
    });
  }

  QueryBuilder<VideoModel, String?, QQueryOperations> thumbnailUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'thumbnailUrl');
    });
  }

  QueryBuilder<VideoModel, int?, QQueryOperations> videoIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'videoId');
    });
  }

  QueryBuilder<VideoModel, String?, QQueryOperations> videoNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'videoName');
    });
  }
}
