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
import 'protocol.dart' as _i2;

abstract class District implements _i1.TableRow, _i1.ProtocolSerialization {
  District._({
    this.id,
    this.name,
    this.cityId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.createdBy,
    this.latitude,
    this.longitude,
    this.population,
    this.area,
    this.timezone,
    this.city,
    this.towns,
  });

  factory District({
    int? id,
    String? name,
    int? cityId,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
    double? latitude,
    double? longitude,
    int? population,
    double? area,
    String? timezone,
    _i2.City? city,
    List<_i2.Town>? towns,
  }) = _DistrictImpl;

  factory District.fromJson(Map<String, dynamic> jsonSerialization) {
    return District(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String?,
      cityId: jsonSerialization['cityId'] as int?,
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
      city: jsonSerialization['city'] == null
          ? null
          : _i2.City.fromJson(
              (jsonSerialization['city'] as Map<String, dynamic>)),
      towns: (jsonSerialization['towns'] as List?)
          ?.map((e) => _i2.Town.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = DistrictTable();

  static const db = DistrictRepository._();

  @override
  int? id;

  String? name;

  int? cityId;

  DateTime? createdAt;

  DateTime? updatedAt;

  DateTime? deletedAt;

  String? createdBy;

  double? latitude;

  double? longitude;

  int? population;

  double? area;

  String? timezone;

  _i2.City? city;

  List<_i2.Town>? towns;

  @override
  _i1.Table get table => t;

  District copyWith({
    int? id,
    String? name,
    int? cityId,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
    double? latitude,
    double? longitude,
    int? population,
    double? area,
    String? timezone,
    _i2.City? city,
    List<_i2.Town>? towns,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (cityId != null) 'cityId': cityId,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (deletedAt != null) 'deletedAt': deletedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (population != null) 'population': population,
      if (area != null) 'area': area,
      if (timezone != null) 'timezone': timezone,
      if (city != null) 'city': city?.toJson(),
      if (towns != null) 'towns': towns?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (cityId != null) 'cityId': cityId,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (deletedAt != null) 'deletedAt': deletedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (population != null) 'population': population,
      if (area != null) 'area': area,
      if (timezone != null) 'timezone': timezone,
      if (city != null) 'city': city?.toJsonForProtocol(),
      if (towns != null)
        'towns': towns?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static DistrictInclude include({
    _i2.CityInclude? city,
    _i2.TownIncludeList? towns,
  }) {
    return DistrictInclude._(
      city: city,
      towns: towns,
    );
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
    int? cityId,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
    double? latitude,
    double? longitude,
    int? population,
    double? area,
    String? timezone,
    _i2.City? city,
    List<_i2.Town>? towns,
  }) : super._(
          id: id,
          name: name,
          cityId: cityId,
          createdAt: createdAt,
          updatedAt: updatedAt,
          deletedAt: deletedAt,
          createdBy: createdBy,
          latitude: latitude,
          longitude: longitude,
          population: population,
          area: area,
          timezone: timezone,
          city: city,
          towns: towns,
        );

  @override
  District copyWith({
    Object? id = _Undefined,
    Object? name = _Undefined,
    Object? cityId = _Undefined,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
    Object? deletedAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? latitude = _Undefined,
    Object? longitude = _Undefined,
    Object? population = _Undefined,
    Object? area = _Undefined,
    Object? timezone = _Undefined,
    Object? city = _Undefined,
    Object? towns = _Undefined,
  }) {
    return District(
      id: id is int? ? id : this.id,
      name: name is String? ? name : this.name,
      cityId: cityId is int? ? cityId : this.cityId,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
      deletedAt: deletedAt is DateTime? ? deletedAt : this.deletedAt,
      createdBy: createdBy is String? ? createdBy : this.createdBy,
      latitude: latitude is double? ? latitude : this.latitude,
      longitude: longitude is double? ? longitude : this.longitude,
      population: population is int? ? population : this.population,
      area: area is double? ? area : this.area,
      timezone: timezone is String? ? timezone : this.timezone,
      city: city is _i2.City? ? city : this.city?.copyWith(),
      towns: towns is List<_i2.Town>?
          ? towns
          : this.towns?.map((e0) => e0.copyWith()).toList(),
    );
  }
}

class DistrictTable extends _i1.Table {
  DistrictTable({super.tableRelation}) : super(tableName: 'district') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    cityId = _i1.ColumnInt(
      'cityId',
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

  late final _i1.ColumnInt cityId;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  late final _i1.ColumnDateTime deletedAt;

  late final _i1.ColumnString createdBy;

  late final _i1.ColumnDouble latitude;

  late final _i1.ColumnDouble longitude;

  late final _i1.ColumnInt population;

  late final _i1.ColumnDouble area;

  late final _i1.ColumnString timezone;

  _i2.CityTable? _city;

  _i2.TownTable? ___towns;

  _i1.ManyRelation<_i2.TownTable>? _towns;

  _i2.CityTable get city {
    if (_city != null) return _city!;
    _city = _i1.createRelationTable(
      relationFieldName: 'city',
      field: District.t.cityId,
      foreignField: _i2.City.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CityTable(tableRelation: foreignTableRelation),
    );
    return _city!;
  }

  _i2.TownTable get __towns {
    if (___towns != null) return ___towns!;
    ___towns = _i1.createRelationTable(
      relationFieldName: '__towns',
      field: District.t.id,
      foreignField: _i2.Town.t.districtId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.TownTable(tableRelation: foreignTableRelation),
    );
    return ___towns!;
  }

  _i1.ManyRelation<_i2.TownTable> get towns {
    if (_towns != null) return _towns!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'towns',
      field: District.t.id,
      foreignField: _i2.Town.t.districtId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.TownTable(tableRelation: foreignTableRelation),
    );
    _towns = _i1.ManyRelation<_i2.TownTable>(
      tableWithRelations: relationTable,
      table: _i2.TownTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _towns!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        cityId,
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

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'city') {
      return city;
    }
    if (relationField == 'towns') {
      return __towns;
    }
    return null;
  }
}

class DistrictInclude extends _i1.IncludeObject {
  DistrictInclude._({
    _i2.CityInclude? city,
    _i2.TownIncludeList? towns,
  }) {
    _city = city;
    _towns = towns;
  }

  _i2.CityInclude? _city;

  _i2.TownIncludeList? _towns;

  @override
  Map<String, _i1.Include?> get includes => {
        'city': _city,
        'towns': _towns,
      };

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

  final attach = const DistrictAttachRepository._();

  final attachRow = const DistrictAttachRowRepository._();

  final detach = const DistrictDetachRepository._();

  final detachRow = const DistrictDetachRowRepository._();

  Future<List<District>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<DistrictTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DistrictTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DistrictTable>? orderByList,
    _i1.Transaction? transaction,
    DistrictInclude? include,
  }) async {
    return databaseAccessor.db.find<District>(
      where: where?.call(District.t),
      orderBy: orderBy?.call(District.t),
      orderByList: orderByList?.call(District.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
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
    DistrictInclude? include,
  }) async {
    return databaseAccessor.db.findFirstRow<District>(
      where: where?.call(District.t),
      orderBy: orderBy?.call(District.t),
      orderByList: orderByList?.call(District.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<District?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
    DistrictInclude? include,
  }) async {
    return databaseAccessor.db.findById<District>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
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

class DistrictAttachRepository {
  const DistrictAttachRepository._();

  Future<void> towns(
    _i1.DatabaseAccessor databaseAccessor,
    District district,
    List<_i2.Town> town, {
    _i1.Transaction? transaction,
  }) async {
    if (town.any((e) => e.id == null)) {
      throw ArgumentError.notNull('town.id');
    }
    if (district.id == null) {
      throw ArgumentError.notNull('district.id');
    }

    var $town = town.map((e) => e.copyWith(districtId: district.id)).toList();
    await databaseAccessor.db.update<_i2.Town>(
      $town,
      columns: [_i2.Town.t.districtId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class DistrictAttachRowRepository {
  const DistrictAttachRowRepository._();

  Future<void> city(
    _i1.DatabaseAccessor databaseAccessor,
    District district,
    _i2.City city, {
    _i1.Transaction? transaction,
  }) async {
    if (district.id == null) {
      throw ArgumentError.notNull('district.id');
    }
    if (city.id == null) {
      throw ArgumentError.notNull('city.id');
    }

    var $district = district.copyWith(cityId: city.id);
    await databaseAccessor.db.updateRow<District>(
      $district,
      columns: [District.t.cityId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<void> towns(
    _i1.DatabaseAccessor databaseAccessor,
    District district,
    _i2.Town town, {
    _i1.Transaction? transaction,
  }) async {
    if (town.id == null) {
      throw ArgumentError.notNull('town.id');
    }
    if (district.id == null) {
      throw ArgumentError.notNull('district.id');
    }

    var $town = town.copyWith(districtId: district.id);
    await databaseAccessor.db.updateRow<_i2.Town>(
      $town,
      columns: [_i2.Town.t.districtId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class DistrictDetachRepository {
  const DistrictDetachRepository._();

  Future<void> towns(
    _i1.DatabaseAccessor databaseAccessor,
    List<_i2.Town> town, {
    _i1.Transaction? transaction,
  }) async {
    if (town.any((e) => e.id == null)) {
      throw ArgumentError.notNull('town.id');
    }

    var $town = town.map((e) => e.copyWith(districtId: null)).toList();
    await databaseAccessor.db.update<_i2.Town>(
      $town,
      columns: [_i2.Town.t.districtId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class DistrictDetachRowRepository {
  const DistrictDetachRowRepository._();

  Future<void> city(
    _i1.DatabaseAccessor databaseAccessor,
    District district, {
    _i1.Transaction? transaction,
  }) async {
    if (district.id == null) {
      throw ArgumentError.notNull('district.id');
    }

    var $district = district.copyWith(cityId: null);
    await databaseAccessor.db.updateRow<District>(
      $district,
      columns: [District.t.cityId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<void> towns(
    _i1.DatabaseAccessor databaseAccessor,
    _i2.Town town, {
    _i1.Transaction? transaction,
  }) async {
    if (town.id == null) {
      throw ArgumentError.notNull('town.id');
    }

    var $town = town.copyWith(districtId: null);
    await databaseAccessor.db.updateRow<_i2.Town>(
      $town,
      columns: [_i2.Town.t.districtId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
