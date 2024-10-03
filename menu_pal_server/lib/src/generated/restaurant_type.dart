/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class RestaurantType
    implements _i1.TableRow, _i1.ProtocolSerialization {
  RestaurantType._({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.createdBy,
  });

  factory RestaurantType({
    int? id,
    String? name,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
  }) = _RestaurantTypeImpl;

  factory RestaurantType.fromJson(Map<String, dynamic> jsonSerialization) {
    return RestaurantType(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String?,
      description: jsonSerialization['description'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
      deletedAt: jsonSerialization['deletedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['deletedAt']),
      createdBy: jsonSerialization['createdBy'] as String?,
    );
  }

  static final t = RestaurantTypeTable();

  static const db = RestaurantTypeRepository._();

  @override
  int? id;

  String? name;

  String? description;

  DateTime? createdAt;

  DateTime? updatedAt;

  DateTime? deletedAt;

  String? createdBy;

  @override
  _i1.Table get table => t;

  RestaurantType copyWith({
    int? id,
    String? name,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (deletedAt != null) 'deletedAt': deletedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (deletedAt != null) 'deletedAt': deletedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy,
    };
  }

  static RestaurantTypeInclude include() {
    return RestaurantTypeInclude._();
  }

  static RestaurantTypeIncludeList includeList({
    _i1.WhereExpressionBuilder<RestaurantTypeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RestaurantTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RestaurantTypeTable>? orderByList,
    RestaurantTypeInclude? include,
  }) {
    return RestaurantTypeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RestaurantType.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(RestaurantType.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RestaurantTypeImpl extends RestaurantType {
  _RestaurantTypeImpl({
    int? id,
    String? name,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
  }) : super._(
          id: id,
          name: name,
          description: description,
          createdAt: createdAt,
          updatedAt: updatedAt,
          deletedAt: deletedAt,
          createdBy: createdBy,
        );

  @override
  RestaurantType copyWith({
    Object? id = _Undefined,
    Object? name = _Undefined,
    Object? description = _Undefined,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
    Object? deletedAt = _Undefined,
    Object? createdBy = _Undefined,
  }) {
    return RestaurantType(
      id: id is int? ? id : this.id,
      name: name is String? ? name : this.name,
      description: description is String? ? description : this.description,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
      deletedAt: deletedAt is DateTime? ? deletedAt : this.deletedAt,
      createdBy: createdBy is String? ? createdBy : this.createdBy,
    );
  }
}

class RestaurantTypeTable extends _i1.Table {
  RestaurantTypeTable({super.tableRelation})
      : super(tableName: 'restaurant_type') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
    deletedAt = _i1.ColumnDateTime(
      'deletedAt',
      this,
    );
    createdBy = _i1.ColumnString(
      'createdBy',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  late final _i1.ColumnDateTime deletedAt;

  late final _i1.ColumnString createdBy;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        description,
        createdAt,
        updatedAt,
        deletedAt,
        createdBy,
      ];
}

class RestaurantTypeInclude extends _i1.IncludeObject {
  RestaurantTypeInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => RestaurantType.t;
}

class RestaurantTypeIncludeList extends _i1.IncludeList {
  RestaurantTypeIncludeList._({
    _i1.WhereExpressionBuilder<RestaurantTypeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(RestaurantType.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => RestaurantType.t;
}

class RestaurantTypeRepository {
  const RestaurantTypeRepository._();

  Future<List<RestaurantType>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<RestaurantTypeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RestaurantTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RestaurantTypeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.find<RestaurantType>(
      where: where?.call(RestaurantType.t),
      orderBy: orderBy?.call(RestaurantType.t),
      orderByList: orderByList?.call(RestaurantType.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<RestaurantType?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<RestaurantTypeTable>? where,
    int? offset,
    _i1.OrderByBuilder<RestaurantTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RestaurantTypeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findFirstRow<RestaurantType>(
      where: where?.call(RestaurantType.t),
      orderBy: orderBy?.call(RestaurantType.t),
      orderByList: orderByList?.call(RestaurantType.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<RestaurantType?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findById<RestaurantType>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<RestaurantType>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<RestaurantType> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<RestaurantType>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<RestaurantType> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    RestaurantType row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<RestaurantType>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<RestaurantType>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<RestaurantType> rows, {
    _i1.ColumnSelections<RestaurantTypeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<RestaurantType>(
      rows,
      columns: columns?.call(RestaurantType.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<RestaurantType> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    RestaurantType row, {
    _i1.ColumnSelections<RestaurantTypeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<RestaurantType>(
      row,
      columns: columns?.call(RestaurantType.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<RestaurantType>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<RestaurantType> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<RestaurantType>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<RestaurantType> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    RestaurantType row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<RestaurantType>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<RestaurantType>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<RestaurantTypeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<RestaurantType>(
      where: where(RestaurantType.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<RestaurantTypeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<RestaurantType>(
      where: where?.call(RestaurantType.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
