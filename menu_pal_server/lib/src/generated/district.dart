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

abstract class District extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  District._({
    int? id,
    this.name,
    this.city,
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

  factory District({
    int? id,
    String? name,
    int? city,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
    double? latitude,
    double? longitude,
    int? population,
    double? area,
    String? timezone,
  }) = _DistrictImpl;

  factory District.fromJson(Map<String, dynamic> jsonSerialization) {
    return District(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String?,
      city: jsonSerialization['city'] as int?,
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

  static final t = DistrictTable();

  static const db = DistrictRepository._();

  String? name;

  int? city;

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

  District copyWith({
    int? id,
    String? name,
    int? city,
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
      if (city != null) 'city': city,
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
      if (city != null) 'city': city,
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

  static DistrictInclude include() {
    return DistrictInclude._();
  }

  static DistrictIncludeList includeList({
    _i1.WhereExpressionBuilder<DistrictTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DistrictTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DistrictTable>? orderByList,
    DistrictInclude? include,
  }) {
    return DistrictIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(District.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(District.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DistrictImpl extends District {
  _DistrictImpl({
    int? id,
    String? name,
    int? city,
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
          city: city,
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
  District copyWith({
    Object? id = _Undefined,
    Object? name = _Undefined,
    Object? city = _Undefined,
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
    return District(
      id: id is int? ? id : this.id,
      name: name is String? ? name : this.name,
      city: city is int? ? city : this.city,
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

class DistrictTable extends _i1.Table {
  DistrictTable({super.tableRelation}) : super(tableName: 'district') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    city = _i1.ColumnInt(
      'city',
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

  late final _i1.ColumnInt city;

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
        city,
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

class DistrictInclude extends _i1.IncludeObject {
  DistrictInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => District.t;
}

class DistrictIncludeList extends _i1.IncludeList {
  DistrictIncludeList._({
    _i1.WhereExpressionBuilder<DistrictTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(District.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => District.t;
}

class DistrictRepository {
  const DistrictRepository._();

  Future<List<District>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<DistrictTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DistrictTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DistrictTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.find<District>(
      where: where?.call(District.t),
      orderBy: orderBy?.call(District.t),
      orderByList: orderByList?.call(District.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<District?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<DistrictTable>? where,
    int? offset,
    _i1.OrderByBuilder<DistrictTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DistrictTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findFirstRow<District>(
      where: where?.call(District.t),
      orderBy: orderBy?.call(District.t),
      orderByList: orderByList?.call(District.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<District?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findById<District>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<District>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<District> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<District>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<District> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    District row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<District>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<District>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<District> rows, {
    _i1.ColumnSelections<DistrictTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<District>(
      rows,
      columns: columns?.call(District.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<District> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    District row, {
    _i1.ColumnSelections<DistrictTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<District>(
      row,
      columns: columns?.call(District.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<District>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<District> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<District>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<District> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    District row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<District>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<District>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<DistrictTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<District>(
      where: where(District.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<DistrictTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<District>(
      where: where?.call(District.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
