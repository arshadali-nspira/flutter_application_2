// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTestModelCollection on Isar {
  IsarCollection<TestModel> get testModels => this.collection();
}

const TestModelSchema = CollectionSchema(
  name: r'TestModel',
  id: -2330294972491284020,
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
    r'testId': PropertySchema(
      id: 2,
      name: r'testId',
      type: IsarType.long,
    ),
    r'testTypeName': PropertySchema(
      id: 3,
      name: r'testTypeName',
      type: IsarType.string,
    )
  },
  estimateSize: _testModelEstimateSize,
  serialize: _testModelSerialize,
  deserialize: _testModelDeserialize,
  deserializeProp: _testModelDeserializeProp,
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
  getId: _testModelGetId,
  getLinks: _testModelGetLinks,
  attach: _testModelAttach,
  version: '3.1.0+1',
);

int _testModelEstimateSize(
  TestModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.testTypeName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _testModelSerialize(
  TestModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.ahChapterId);
  writer.writeLong(offsets[1], object.ahTopicId);
  writer.writeLong(offsets[2], object.testId);
  writer.writeString(offsets[3], object.testTypeName);
}

TestModel _testModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TestModel();
  object.ahChapterId = reader.readLongOrNull(offsets[0]);
  object.ahTopicId = reader.readLongOrNull(offsets[1]);
  object.id = id;
  object.testId = reader.readLongOrNull(offsets[2]);
  object.testTypeName = reader.readStringOrNull(offsets[3]);
  return object;
}

P _testModelDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _testModelGetId(TestModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _testModelGetLinks(TestModel object) {
  return [];
}

void _testModelAttach(IsarCollection<dynamic> col, Id id, TestModel object) {
  object.id = id;
}

extension TestModelQueryWhereSort
    on QueryBuilder<TestModel, TestModel, QWhere> {
  QueryBuilder<TestModel, TestModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterWhere> anyAhChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'ahChapterId'),
      );
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterWhere> anyAhTopicId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'ahTopicId'),
      );
    });
  }
}

extension TestModelQueryWhere
    on QueryBuilder<TestModel, TestModel, QWhereClause> {
  QueryBuilder<TestModel, TestModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> ahChapterIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ahChapterId',
        value: [null],
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> ahChapterIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ahChapterId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> ahChapterIdEqualTo(
      int? ahChapterId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ahChapterId',
        value: [ahChapterId],
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> ahChapterIdNotEqualTo(
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

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> ahChapterIdGreaterThan(
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

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> ahChapterIdLessThan(
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

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> ahChapterIdBetween(
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

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> ahTopicIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ahTopicId',
        value: [null],
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> ahTopicIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ahTopicId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> ahTopicIdEqualTo(
      int? ahTopicId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ahTopicId',
        value: [ahTopicId],
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> ahTopicIdNotEqualTo(
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

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> ahTopicIdGreaterThan(
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

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> ahTopicIdLessThan(
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

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> ahTopicIdBetween(
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

extension TestModelQueryFilter
    on QueryBuilder<TestModel, TestModel, QFilterCondition> {
  QueryBuilder<TestModel, TestModel, QAfterFilterCondition>
      ahChapterIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ahChapterId',
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition>
      ahChapterIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ahChapterId',
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> ahChapterIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ahChapterId',
        value: value,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition>
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

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> ahChapterIdLessThan(
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

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> ahChapterIdBetween(
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

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> ahTopicIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ahTopicId',
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition>
      ahTopicIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ahTopicId',
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> ahTopicIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ahTopicId',
        value: value,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition>
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

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> ahTopicIdLessThan(
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

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> ahTopicIdBetween(
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

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> testIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'testId',
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> testIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'testId',
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> testIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'testId',
        value: value,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> testIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'testId',
        value: value,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> testIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'testId',
        value: value,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> testIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'testId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition>
      testTypeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'testTypeName',
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition>
      testTypeNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'testTypeName',
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> testTypeNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'testTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition>
      testTypeNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'testTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition>
      testTypeNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'testTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> testTypeNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'testTypeName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition>
      testTypeNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'testTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition>
      testTypeNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'testTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition>
      testTypeNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'testTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> testTypeNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'testTypeName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition>
      testTypeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'testTypeName',
        value: '',
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition>
      testTypeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'testTypeName',
        value: '',
      ));
    });
  }
}

extension TestModelQueryObject
    on QueryBuilder<TestModel, TestModel, QFilterCondition> {}

extension TestModelQueryLinks
    on QueryBuilder<TestModel, TestModel, QFilterCondition> {}

extension TestModelQuerySortBy on QueryBuilder<TestModel, TestModel, QSortBy> {
  QueryBuilder<TestModel, TestModel, QAfterSortBy> sortByAhChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahChapterId', Sort.asc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> sortByAhChapterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahChapterId', Sort.desc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> sortByAhTopicId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahTopicId', Sort.asc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> sortByAhTopicIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahTopicId', Sort.desc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> sortByTestId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'testId', Sort.asc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> sortByTestIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'testId', Sort.desc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> sortByTestTypeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'testTypeName', Sort.asc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> sortByTestTypeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'testTypeName', Sort.desc);
    });
  }
}

extension TestModelQuerySortThenBy
    on QueryBuilder<TestModel, TestModel, QSortThenBy> {
  QueryBuilder<TestModel, TestModel, QAfterSortBy> thenByAhChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahChapterId', Sort.asc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> thenByAhChapterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahChapterId', Sort.desc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> thenByAhTopicId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahTopicId', Sort.asc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> thenByAhTopicIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ahTopicId', Sort.desc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> thenByTestId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'testId', Sort.asc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> thenByTestIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'testId', Sort.desc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> thenByTestTypeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'testTypeName', Sort.asc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> thenByTestTypeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'testTypeName', Sort.desc);
    });
  }
}

extension TestModelQueryWhereDistinct
    on QueryBuilder<TestModel, TestModel, QDistinct> {
  QueryBuilder<TestModel, TestModel, QDistinct> distinctByAhChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ahChapterId');
    });
  }

  QueryBuilder<TestModel, TestModel, QDistinct> distinctByAhTopicId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ahTopicId');
    });
  }

  QueryBuilder<TestModel, TestModel, QDistinct> distinctByTestId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'testId');
    });
  }

  QueryBuilder<TestModel, TestModel, QDistinct> distinctByTestTypeName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'testTypeName', caseSensitive: caseSensitive);
    });
  }
}

extension TestModelQueryProperty
    on QueryBuilder<TestModel, TestModel, QQueryProperty> {
  QueryBuilder<TestModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TestModel, int?, QQueryOperations> ahChapterIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ahChapterId');
    });
  }

  QueryBuilder<TestModel, int?, QQueryOperations> ahTopicIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ahTopicId');
    });
  }

  QueryBuilder<TestModel, int?, QQueryOperations> testIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'testId');
    });
  }

  QueryBuilder<TestModel, String?, QQueryOperations> testTypeNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'testTypeName');
    });
  }
}
