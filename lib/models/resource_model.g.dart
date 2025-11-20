// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetResourceModelCollection on Isar {
  IsarCollection<ResourceModel> get resourceModels => this.collection();
}

const ResourceModelSchema = CollectionSchema(
  name: r'ResourceModel',
  id: 1485060619445726105,
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
    r'resourceId': PropertySchema(
      id: 2,
      name: r'resourceId',
      type: IsarType.long,
    ),
    r'resourceName': PropertySchema(
      id: 3,
      name: r'resourceName',
      type: IsarType.string,
    ),
    r'resourceType': PropertySchema(
      id: 4,
      name: r'resourceType',
      type: IsarType.string,
    )
  },
  estimateSize: _resourceModelEstimateSize,
  serialize: _resourceModelSerialize,
  deserialize: _resourceModelDeserialize,
  deserializeProp: _resourceModelDeserializeProp,
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
  getId: _resourceModelGetId,
  getLinks: _resourceModelGetLinks,
  attach: _resourceModelAttach,
  version: '3.1.0+1',
);

int _resourceModelEstimateSize(
  ResourceModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.resourceName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.resourceType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _resourceModelSerialize(
  ResourceModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.ahChapterId);
  writer.writeLong(offsets[1], object.ahTopicId);
  writer.writeLong(offsets[2], object.resourceId);
  writer.writeString(offsets[3], object.resourceName);
  writer.writeString(offsets[4], object.resourceType);
}

ResourceModel _resourceModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ResourceModel();
  object.ahChapterId = reader.readLongOrNull(offsets[0]);
  object.ahTopicId = reader.readLongOrNull(offsets[1]);
  object.id = id;
  object.resourceId = reader.readLongOrNull(offsets[2]);
  object.resourceName = reader.readStringOrNull(offsets[3]);
  object.resourceType = reader.readStringOrNull(offsets[4]);
  return object;
}

P _resourceModelDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _resourceModelGetId(ResourceModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _resourceModelGetLinks(ResourceModel object) {
  return [];
}

void _resourceModelAttach(
    IsarCollection<dynamic> col, Id id, ResourceModel object) {
  object.id = id;
}

extension ResourceModelQueryWhereSort
    on QueryBuilder<ResourceModel, ResourceModel, QWhere> {
  QueryBuilder<ResourceModel, ResourceModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterWhere> anyAhChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'ahChapterId'),
      );
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterWhere> anyAhTopicId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'ahTopicId'),
      );
    });
  }
}

extension ResourceModelQueryWhere
    on QueryBuilder<ResourceModel, ResourceModel, QWhereClause> {
  QueryBuilder<ResourceModel, ResourceModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<ResourceModel, ResourceModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<ResourceModel, ResourceModel, QAfterWhereClause>
      ahChapterIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ahChapterId',
        value: [null],
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterWhereClause>
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

  QueryBuilder<ResourceModel, ResourceModel, QAfterWhereClause>
      ahChapterIdEqualTo(int? ahChapterId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ahChapterId',
        value: [ahChapterId],
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterWhereClause>
      ahChapterIdNotEqualTo(int? ahChapterId) {
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

  QueryBuilder<ResourceModel, ResourceModel, QAfterWhereClause>
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

  QueryBuilder<ResourceModel, ResourceModel, QAfterWhereClause>
      ahChapterIdLessThan(
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

  QueryBuilder<ResourceModel, ResourceModel, QAfterWhereClause>
      ahChapterIdBetween(
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

  QueryBuilder<ResourceModel, ResourceModel, QAfterWhereClause>
      ahTopicIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ahTopicId',
        value: [null],
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterWhereClause>
      ahTopicIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ahTopicId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterWhereClause>
      ahTopicIdEqualTo(int? ahTopicId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ahTopicId',
        value: [ahTopicId],
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterWhereClause>
      ahTopicIdNotEqualTo(int? ahTopicId) {
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

  QueryBuilder<ResourceModel, ResourceModel, QAfterWhereClause>
      ahTopicIdGreaterThan(
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

  QueryBuilder<ResourceModel, ResourceModel, QAfterWhereClause>
      ahTopicIdLessThan(
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

  QueryBuilder<ResourceModel, ResourceModel, QAfterWhereClause>
      ahTopicIdBetween(
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

extension ResourceModelQueryFilter
    on QueryBuilder<ResourceModel, ResourceModel, QFilterCondition> {
  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      ahChapterIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ahChapterId',
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      ahChapterIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ahChapterId',
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      ahChapterIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ahChapterId',
        value: value,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
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

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
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

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
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

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      ahTopicIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ahTopicId',
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      ahTopicIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ahTopicId',
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      ahTopicIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ahTopicId',
        value: value,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
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

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      ahTopicIdLessThan(
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

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      ahTopicIdBetween(
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

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'resourceId',
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'resourceId',
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resourceId',
        value: value,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'resourceId',
        value: value,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'resourceId',
        value: value,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'resourceId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'resourceName',
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'resourceName',
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resourceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'resourceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'resourceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'resourceName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'resourceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'resourceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'resourceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'resourceName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resourceName',
        value: '',
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'resourceName',
        value: '',
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'resourceType',
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'resourceType',
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resourceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'resourceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'resourceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'resourceType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'resourceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'resourceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'resourceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'resourceType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resourceType',
        value: '',
      ));
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterFilterCondition>
      resourceTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'resourceType',
        value: '',
      ));
    });
  }
}

extension ResourceModelQueryObject
    on QueryBuilder<ResourceModel, ResourceModel, QFilterCondition> {}

extension ResourceModelQueryLinks
    on QueryBuilder<ResourceModel, ResourceModel, QFilterCondition> {}

extension ResourceModelQuerySortBy
    on QueryBuilder<ResourceModel, ResourceModel, QSortBy> {
  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy> sortByAhChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahChapterId', Sort.asc);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy>
      sortByAhChapterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahChapterId', Sort.desc);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy> sortByAhTopicId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahTopicId', Sort.asc);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy>
      sortByAhTopicIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahTopicId', Sort.desc);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy> sortByResourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resourceId', Sort.asc);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy>
      sortByResourceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resourceId', Sort.desc);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy>
      sortByResourceName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resourceName', Sort.asc);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy>
      sortByResourceNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resourceName', Sort.desc);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy>
      sortByResourceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resourceType', Sort.asc);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy>
      sortByResourceTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resourceType', Sort.desc);
    });
  }
}

extension ResourceModelQuerySortThenBy
    on QueryBuilder<ResourceModel, ResourceModel, QSortThenBy> {
  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy> thenByAhChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahChapterId', Sort.asc);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy>
      thenByAhChapterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahChapterId', Sort.desc);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy> thenByAhTopicId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahTopicId', Sort.asc);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy>
      thenByAhTopicIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahTopicId', Sort.desc);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy> thenByResourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resourceId', Sort.asc);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy>
      thenByResourceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resourceId', Sort.desc);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy>
      thenByResourceName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resourceName', Sort.asc);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy>
      thenByResourceNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resourceName', Sort.desc);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy>
      thenByResourceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resourceType', Sort.asc);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QAfterSortBy>
      thenByResourceTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resourceType', Sort.desc);
    });
  }
}

extension ResourceModelQueryWhereDistinct
    on QueryBuilder<ResourceModel, ResourceModel, QDistinct> {
  QueryBuilder<ResourceModel, ResourceModel, QDistinct>
      distinctByAhChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ahChapterId');
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QDistinct> distinctByAhTopicId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ahTopicId');
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QDistinct> distinctByResourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'resourceId');
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QDistinct> distinctByResourceName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'resourceName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResourceModel, ResourceModel, QDistinct> distinctByResourceType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'resourceType', caseSensitive: caseSensitive);
    });
  }
}

extension ResourceModelQueryProperty
    on QueryBuilder<ResourceModel, ResourceModel, QQueryProperty> {
  QueryBuilder<ResourceModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ResourceModel, int?, QQueryOperations> ahChapterIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ahChapterId');
    });
  }

  QueryBuilder<ResourceModel, int?, QQueryOperations> ahTopicIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ahTopicId');
    });
  }

  QueryBuilder<ResourceModel, int?, QQueryOperations> resourceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'resourceId');
    });
  }

  QueryBuilder<ResourceModel, String?, QQueryOperations>
      resourceNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'resourceName');
    });
  }

  QueryBuilder<ResourceModel, String?, QQueryOperations>
      resourceTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'resourceType');
    });
  }
}
