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

abstract class MenuType extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  MenuType._({
    int? id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.createdBy,
  }) : super(id);

  factory MenuType({
    int? id,
    String? name,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
  }) = _MenuTypeImpl;

  factory MenuType.fromJson(Map<String, dynamic> jsonSerialization) {
    return MenuType(
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

  static final t = MenuTypeTable();

  static const db = MenuTypeRepository._();

  String? name;

  String? description;

  DateTime? createdAt;

  DateTime? updatedAt;

  DateTime? deletedAt;

  String? createdBy;

  @override
  _i1.Table get table => t;

  MenuType copyWith({
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

  static MenuTypeInclude include() {
    return MenuTypeInclude._();
  }

  static MenuTypeIncludeList includeList({
    _i1.WhereExpressionBuilder<MenuTypeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MenuTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MenuTypeTable>? orderByList,
    MenuTypeInclude? include,
  }) {
    return MenuTypeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(MenuType.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(MenuType.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MenuTypeImpl extends MenuType {
  _MenuTypeImpl({
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
  MenuType copyWith({
    Object? id = _Undefined,
    Object? name = _Undefined,
    Object? description = _Undefined,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
    Object? deletedAt = _Undefined,
    Object? createdBy = _Undefined,
  }) {
    return MenuType(
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

class MenuTypeTable extends _i1.Table {
  MenuTypeTable({super.tableRelation}) : super(tableName: 'menu_type') {
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

class MenuTypeInclude extends _i1.IncludeObject {
  MenuTypeInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => MenuType.t;
}

class MenuTypeIncludeList extends _i1.IncludeList {
  MenuTypeIncludeList._({
    _i1.WhereExpressionBuilder<MenuTypeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(MenuType.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => MenuType.t;
}

class MenuTypeRepository {
  const MenuTypeRepository._();

  Future<List<MenuType>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<MenuTypeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MenuTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MenuTypeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.find<MenuType>(
      where: where?.call(MenuType.t),
      orderBy: orderBy?.call(MenuType.t),
      orderByList: orderByList?.call(MenuType.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<MenuType?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<MenuTypeTable>? where,
    int? offset,
    _i1.OrderByBuilder<MenuTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MenuTypeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findFirstRow<MenuType>(
      where: where?.call(MenuType.t),
      orderBy: orderBy?.call(MenuType.t),
      orderByList: orderByList?.call(MenuType.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<MenuType?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findById<MenuType>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<MenuType>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<MenuType> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<MenuType>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<MenuType> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    MenuType row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<MenuType>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<MenuType>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<MenuType> rows, {
    _i1.ColumnSelections<MenuTypeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<MenuType>(
      rows,
      columns: columns?.call(MenuType.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<MenuType> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    MenuType row, {
    _i1.ColumnSelections<MenuTypeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<MenuType>(
      row,
      columns: columns?.call(MenuType.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<MenuType>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<MenuType> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<MenuType>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<MenuType> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    MenuType row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<MenuType>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<MenuType>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<MenuTypeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<MenuType>(
      where: where(MenuType.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<MenuTypeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<MenuType>(
      where: where?.call(MenuType.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
