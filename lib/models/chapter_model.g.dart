// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetChapterModelCollection on Isar {
  IsarCollection<ChapterModel> get chapterModels => this.collection();
}

const ChapterModelSchema = CollectionSchema(
  name: r'ChapterModel',
  id: 7091115124148718322,
  properties: {
    r'ahChapterId': PropertySchema(
      id: 0,
      name: r'ahChapterId',
      type: IsarType.long,
    ),
    r'ahSubjectId': PropertySchema(
      id: 1,
      name: r'ahSubjectId',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _chapterModelEstimateSize,
  serialize: _chapterModelSerialize,
  deserialize: _chapterModelDeserialize,
  deserializeProp: _chapterModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'ahSubjectId': IndexSchema(
      id: 3454791221991891159,
      name: r'ahSubjectId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'ahSubjectId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _chapterModelGetId,
  getLinks: _chapterModelGetLinks,
  attach: _chapterModelAttach,
  version: '3.1.0+1',
);

int _chapterModelEstimateSize(
  ChapterModel object,
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

void _chapterModelSerialize(
  ChapterModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.ahChapterId);
  writer.writeLong(offsets[1], object.ahSubjectId);
  writer.writeString(offsets[2], object.name);
}

ChapterModel _chapterModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ChapterModel();
  object.ahChapterId = reader.readLongOrNull(offsets[0]);
  object.ahSubjectId = reader.readLongOrNull(offsets[1]);
  object.id = id;
  object.name = reader.readStringOrNull(offsets[2]);
  return object;
}

P _chapterModelDeserializeProp<P>(
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

Id _chapterModelGetId(ChapterModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _chapterModelGetLinks(ChapterModel object) {
  return [];
}

void _chapterModelAttach(
    IsarCollection<dynamic> col, Id id, ChapterModel object) {
  object.id = id;
}

extension ChapterModelQueryWhereSort
    on QueryBuilder<ChapterModel, ChapterModel, QWhere> {
  QueryBuilder<ChapterModel, ChapterModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterWhere> anyAhSubjectId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'ahSubjectId'),
      );
    });
  }
}

extension ChapterModelQueryWhere
    on QueryBuilder<ChapterModel, ChapterModel, QWhereClause> {
  QueryBuilder<ChapterModel, ChapterModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<ChapterModel, ChapterModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<ChapterModel, ChapterModel, QAfterWhereClause>
      ahSubjectIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ahSubjectId',
        value: [null],
      ));
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterWhereClause>
      ahSubjectIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ahSubjectId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterWhereClause>
      ahSubjectIdEqualTo(int? ahSubjectId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ahSubjectId',
        value: [ahSubjectId],
      ));
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterWhereClause>
      ahSubjectIdNotEqualTo(int? ahSubjectId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ahSubjectId',
              lower: [],
              upper: [ahSubjectId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ahSubjectId',
              lower: [ahSubjectId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ahSubjectId',
              lower: [ahSubjectId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ahSubjectId',
              lower: [],
              upper: [ahSubjectId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterWhereClause>
      ahSubjectIdGreaterThan(
    int? ahSubjectId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ahSubjectId',
        lower: [ahSubjectId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterWhereClause>
      ahSubjectIdLessThan(
    int? ahSubjectId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ahSubjectId',
        lower: [],
        upper: [ahSubjectId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterWhereClause>
      ahSubjectIdBetween(
    int? lowerAhSubjectId,
    int? upperAhSubjectId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ahSubjectId',
        lower: [lowerAhSubjectId],
        includeLower: includeLower,
        upper: [upperAhSubjectId],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ChapterModelQueryFilter
    on QueryBuilder<ChapterModel, ChapterModel, QFilterCondition> {
  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition>
      ahChapterIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ahChapterId',
      ));
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition>
      ahChapterIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ahChapterId',
      ));
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition>
      ahChapterIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ahChapterId',
        value: value,
      ));
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition>
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

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition>
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

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition>
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

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition>
      ahSubjectIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ahSubjectId',
      ));
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition>
      ahSubjectIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ahSubjectId',
      ));
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition>
      ahSubjectIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ahSubjectId',
        value: value,
      ));
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition>
      ahSubjectIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ahSubjectId',
        value: value,
      ));
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition>
      ahSubjectIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ahSubjectId',
        value: value,
      ));
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition>
      ahSubjectIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ahSubjectId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition>
      nameGreaterThan(
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

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition>
      nameStartsWith(
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

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition> nameContains(
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

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension ChapterModelQueryObject
    on QueryBuilder<ChapterModel, ChapterModel, QFilterCondition> {}

extension ChapterModelQueryLinks
    on QueryBuilder<ChapterModel, ChapterModel, QFilterCondition> {}

extension ChapterModelQuerySortBy
    on QueryBuilder<ChapterModel, ChapterModel, QSortBy> {
  QueryBuilder<ChapterModel, ChapterModel, QAfterSortBy> sortByAhChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahChapterId', Sort.asc);
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterSortBy>
      sortByAhChapterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahChapterId', Sort.desc);
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterSortBy> sortByAhSubjectId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahSubjectId', Sort.asc);
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterSortBy>
      sortByAhSubjectIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahSubjectId', Sort.desc);
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension ChapterModelQuerySortThenBy
    on QueryBuilder<ChapterModel, ChapterModel, QSortThenBy> {
  QueryBuilder<ChapterModel, ChapterModel, QAfterSortBy> thenByAhChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahChapterId', Sort.asc);
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterSortBy>
      thenByAhChapterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahChapterId', Sort.desc);
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterSortBy> thenByAhSubjectId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahSubjectId', Sort.asc);
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterSortBy>
      thenByAhSubjectIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahSubjectId', Sort.desc);
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension ChapterModelQueryWhereDistinct
    on QueryBuilder<ChapterModel, ChapterModel, QDistinct> {
  QueryBuilder<ChapterModel, ChapterModel, QDistinct> distinctByAhChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ahChapterId');
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QDistinct> distinctByAhSubjectId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ahSubjectId');
    });
  }

  QueryBuilder<ChapterModel, ChapterModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension ChapterModelQueryProperty
    on QueryBuilder<ChapterModel, ChapterModel, QQueryProperty> {
  QueryBuilder<ChapterModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ChapterModel, int?, QQueryOperations> ahChapterIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ahChapterId');
    });
  }

  QueryBuilder<ChapterModel, int?, QQueryOperations> ahSubjectIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ahSubjectId');
    });
  }

  QueryBuilder<ChapterModel, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
