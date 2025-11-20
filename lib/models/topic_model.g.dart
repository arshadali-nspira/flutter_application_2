// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTopicModelCollection on Isar {
  IsarCollection<TopicModel> get topicModels => this.collection();
}

const TopicModelSchema = CollectionSchema(
  name: r'TopicModel',
  id: -634589795994312055,
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
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _topicModelEstimateSize,
  serialize: _topicModelSerialize,
  deserialize: _topicModelDeserialize,
  deserializeProp: _topicModelDeserializeProp,
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
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _topicModelGetId,
  getLinks: _topicModelGetLinks,
  attach: _topicModelAttach,
  version: '3.1.0+1',
);

int _topicModelEstimateSize(
  TopicModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _topicModelSerialize(
  TopicModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.ahChapterId);
  writer.writeLong(offsets[1], object.ahTopicId);
  writer.writeString(offsets[2], object.name);
}

TopicModel _topicModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TopicModel();
  object.ahChapterId = reader.readLongOrNull(offsets[0]);
  object.ahTopicId = reader.readLongOrNull(offsets[1]);
  object.id = id;
  object.name = reader.readStringOrNull(offsets[2]);
  return object;
}

P _topicModelDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _topicModelGetId(TopicModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _topicModelGetLinks(TopicModel object) {
  return [];
}

void _topicModelAttach(IsarCollection<dynamic> col, Id id, TopicModel object) {
  object.id = id;
}

extension TopicModelQueryWhereSort
    on QueryBuilder<TopicModel, TopicModel, QWhere> {
  QueryBuilder<TopicModel, TopicModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterWhere> anyAhChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'ahChapterId'),
      );
    });
  }
}

extension TopicModelQueryWhere
    on QueryBuilder<TopicModel, TopicModel, QWhereClause> {
  QueryBuilder<TopicModel, TopicModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<TopicModel, TopicModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<TopicModel, TopicModel, QAfterWhereClause> ahChapterIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ahChapterId',
        value: [null],
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterWhereClause>
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

  QueryBuilder<TopicModel, TopicModel, QAfterWhereClause> ahChapterIdEqualTo(
      int? ahChapterId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ahChapterId',
        value: [ahChapterId],
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterWhereClause> ahChapterIdNotEqualTo(
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

  QueryBuilder<TopicModel, TopicModel, QAfterWhereClause>
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

  QueryBuilder<TopicModel, TopicModel, QAfterWhereClause> ahChapterIdLessThan(
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

  QueryBuilder<TopicModel, TopicModel, QAfterWhereClause> ahChapterIdBetween(
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
}

extension TopicModelQueryFilter
    on QueryBuilder<TopicModel, TopicModel, QFilterCondition> {
  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition>
      ahChapterIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ahChapterId',
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition>
      ahChapterIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ahChapterId',
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition>
      ahChapterIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ahChapterId',
        value: value,
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition>
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

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition>
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

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition>
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

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition>
      ahTopicIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ahTopicId',
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition>
      ahTopicIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ahTopicId',
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition> ahTopicIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ahTopicId',
        value: value,
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition>
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

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition> ahTopicIdLessThan(
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

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition> ahTopicIdBetween(
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

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension TopicModelQueryObject
    on QueryBuilder<TopicModel, TopicModel, QFilterCondition> {}

extension TopicModelQueryLinks
    on QueryBuilder<TopicModel, TopicModel, QFilterCondition> {}

extension TopicModelQuerySortBy
    on QueryBuilder<TopicModel, TopicModel, QSortBy> {
  QueryBuilder<TopicModel, TopicModel, QAfterSortBy> sortByAhChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahChapterId', Sort.asc);
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterSortBy> sortByAhChapterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahChapterId', Sort.desc);
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterSortBy> sortByAhTopicId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahTopicId', Sort.asc);
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterSortBy> sortByAhTopicIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahTopicId', Sort.desc);
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension TopicModelQuerySortThenBy
    on QueryBuilder<TopicModel, TopicModel, QSortThenBy> {
  QueryBuilder<TopicModel, TopicModel, QAfterSortBy> thenByAhChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahChapterId', Sort.asc);
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterSortBy> thenByAhChapterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahChapterId', Sort.desc);
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterSortBy> thenByAhTopicId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahTopicId', Sort.asc);
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterSortBy> thenByAhTopicIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahTopicId', Sort.desc);
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<TopicModel, TopicModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension TopicModelQueryWhereDistinct
    on QueryBuilder<TopicModel, TopicModel, QDistinct> {
  QueryBuilder<TopicModel, TopicModel, QDistinct> distinctByAhChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ahChapterId');
    });
  }

  QueryBuilder<TopicModel, TopicModel, QDistinct> distinctByAhTopicId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ahTopicId');
    });
  }

  QueryBuilder<TopicModel, TopicModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension TopicModelQueryProperty
    on QueryBuilder<TopicModel, TopicModel, QQueryProperty> {
  QueryBuilder<TopicModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TopicModel, int?, QQueryOperations> ahChapterIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ahChapterId');
    });
  }

  QueryBuilder<TopicModel, int?, QQueryOperations> ahTopicIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ahTopicId');
    });
  }

  QueryBuilder<TopicModel, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
