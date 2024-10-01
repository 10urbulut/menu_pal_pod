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

abstract class Town extends _i1.TableRow implements _i1.ProtocolSerialization {
  Town._({
    int? id,
    this.name,
    this.district,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.createdBy,
    this.latitude,
    this.longitude,
    this.population,
    this.area,
    this.timezone,
  }) : super(id);

  factory Town({
    int? id,
    String? name,
    int? district,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
    double? latitude,
    double? longitude,
    int? population,
    double? area,
    String? timezone,
  }) = _TownImpl;

  factory Town.fromJson(Map<String, dynamic> jsonSerialization) {
    return Town(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String?,
      district: jsonSerialization['district'] as int?,
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
      latitude: (jsonSerialization['latitude'] as num?)?.toDouble(),
      longitude: (jsonSerialization['longitude'] as num?)?.toDouble(),
      population: jsonSerialization['population'] as int?,
      area: (jsonSerialization['area'] as num?)?.toDouble(),
      timezone: jsonSerialization['timezone'] as String?,
    );
  }

  static final t = TownTable();

  static const db = TownRepository._();

  String? name;

  int? district;

  DateTime? createdAt;

  DateTime? updatedAt;

  DateTime? deletedAt;

  String? createdBy;

  double? latitude;

  double? longitude;

  int? population;

  double? area;

  String? timezone;

  @override
  _i1.Table get table => t;

  Town copyWith({
    int? id,
    String? name,
    int? district,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
    double? latitude,
    double? longitude,
    int? population,
    double? area,
    String? timezone,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (district != null) 'district': district,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (deletedAt != null) 'deletedAt': deletedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (population != null) 'population': population,
      if (area != null) 'area': area,
      if (timezone != null) 'timezone': timezone,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (district != null) 'district': district,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (deletedAt != null) 'deletedAt': deletedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (population != null) 'population': population,
      if (area != null) 'area': area,
      if (timezone != null) 'timezone': timezone,
    };
  }

  static TownInclude include() {
    return TownInclude._();
  }

  static TownIncludeList includeList({
    _i1.WhereExpressionBuilder<TownTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TownTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TownTable>? orderByList,
    TownInclude? include,
  }) {
    return TownIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Town.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Town.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TownImpl extends Town {
  _TownImpl({
    int? id,
    String? name,
    int? district,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
    double? latitude,
    double? longitude,
    int? population,
    double? area,
    String? timezone,
  }) : super._(
          id: id,
          name: name,
          district: district,
          createdAt: createdAt,
          updatedAt: updatedAt,
          deletedAt: deletedAt,
          createdBy: createdBy,
          latitude: latitude,
          longitude: longitude,
          population: population,
          area: area,
          timezone: timezone,
        );

  @override
  Town copyWith({
    Object? id = _Undefined,
    Object? name = _Undefined,
    Object? district = _Undefined,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
    Object? deletedAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? latitude = _Undefined,
    Object? longitude = _Undefined,
    Object? population = _Undefined,
    Object? area = _Undefined,
    Object? timezone = _Undefined,
  }) {
    return Town(
      id: id is int? ? id : this.id,
      name: name is String? ? name : this.name,
      district: district is int? ? district : this.district,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
      deletedAt: deletedAt is DateTime? ? deletedAt : this.deletedAt,
      createdBy: createdBy is String? ? createdBy : this.createdBy,
      latitude: latitude is double? ? latitude : this.latitude,
      longitude: longitude is double? ? longitude : this.longitude,
      population: population is int? ? population : this.population,
      area: area is double? ? area : this.area,
      timezone: timezone is String? ? timezone : this.timezone,
    );
  }
}

class TownTable extends _i1.Table {
  TownTable({super.tableRelation}) : super(tableName: 'town') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    district = _i1.ColumnInt(
      'district',
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
    latitude = _i1.ColumnDouble(
      'latitude',
      this,
    );
    longitude = _i1.ColumnDouble(
      'longitude',
      this,
    );
    population = _i1.ColumnInt(
      'population',
      this,
    );
    area = _i1.ColumnDouble(
      'area',
      this,
    );
    timezone = _i1.ColumnString(
      'timezone',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnInt district;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  late final _i1.ColumnDateTime deletedAt;

  late final _i1.ColumnString createdBy;

  late final _i1.ColumnDouble latitude;

  late final _i1.ColumnDouble longitude;

  late final _i1.ColumnInt population;

  late final _i1.ColumnDouble area;

  late final _i1.ColumnString timezone;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        district,
        createdAt,
        updatedAt,
        deletedAt,
        createdBy,
        latitude,
        longitude,
        population,
        area,
        timezone,
      ];
}

class TownInclude extends _i1.IncludeObject {
  TownInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Town.t;
}

class TownIncludeList extends _i1.IncludeList {
  TownIncludeList._({
    _i1.WhereExpressionBuilder<TownTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Town.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Town.t;
}

class TownRepository {
  const TownRepository._();

  Future<List<Town>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<TownTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TownTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TownTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.find<Town>(
      where: where?.call(Town.t),
      orderBy: orderBy?.call(Town.t),
      orderByList: orderByList?.call(Town.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Town?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<TownTable>? where,
    int? offset,
    _i1.OrderByBuilder<TownTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TownTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findFirstRow<Town>(
      where: where?.call(Town.t),
      orderBy: orderBy?.call(Town.t),
      orderByList: orderByList?.call(Town.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Town?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findById<Town>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Town>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<Town> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<Town>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Town> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    Town row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<Town>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Town>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<Town> rows, {
    _i1.ColumnSelections<TownTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<Town>(
      rows,
      columns: columns?.call(Town.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Town> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    Town row, {
    _i1.ColumnSelections<TownTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<Town>(
      row,
      columns: columns?.call(Town.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Town>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<Town> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<Town>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Town> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    Town row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<Town>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Town>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<TownTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<Town>(
      where: where(Town.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<TownTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<Town>(
      where: where?.call(Town.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
