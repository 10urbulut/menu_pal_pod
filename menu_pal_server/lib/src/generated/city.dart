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

abstract class City implements _i1.TableRow, _i1.ProtocolSerialization {
  City._({
    this.id,
    this.name,
    this.countryId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.createdBy,
    this.latitude,
    this.longitude,
    this.population,
    this.area,
    this.currency,
    this.timezone,
    this.districts,
    this.country,
  });

  factory City({
    int? id,
    String? name,
    int? countryId,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
    double? latitude,
    double? longitude,
    int? population,
    double? area,
    String? currency,
    String? timezone,
    List<_i2.District>? districts,
    _i2.Country? country,
  }) = _CityImpl;

  factory City.fromJson(Map<String, dynamic> jsonSerialization) {
    return City(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String?,
      countryId: jsonSerialization['countryId'] as int?,
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
      currency: jsonSerialization['currency'] as String?,
      timezone: jsonSerialization['timezone'] as String?,
      districts: (jsonSerialization['districts'] as List?)
          ?.map((e) => _i2.District.fromJson((e as Map<String, dynamic>)))
          .toList(),
      country: jsonSerialization['country'] == null
          ? null
          : _i2.Country.fromJson(
              (jsonSerialization['country'] as Map<String, dynamic>)),
    );
  }

  static final t = CityTable();

  static const db = CityRepository._();

  @override
  int? id;

  String? name;

  int? countryId;

  DateTime? createdAt;

  DateTime? updatedAt;

  DateTime? deletedAt;

  String? createdBy;

  double? latitude;

  double? longitude;

  int? population;

  double? area;

  String? currency;

  String? timezone;

  List<_i2.District>? districts;

  _i2.Country? country;

  @override
  _i1.Table get table => t;

  City copyWith({
    int? id,
    String? name,
    int? countryId,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
    double? latitude,
    double? longitude,
    int? population,
    double? area,
    String? currency,
    String? timezone,
    List<_i2.District>? districts,
    _i2.Country? country,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (countryId != null) 'countryId': countryId,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (deletedAt != null) 'deletedAt': deletedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (population != null) 'population': population,
      if (area != null) 'area': area,
      if (currency != null) 'currency': currency,
      if (timezone != null) 'timezone': timezone,
      if (districts != null)
        'districts': districts?.toJson(valueToJson: (v) => v.toJson()),
      if (country != null) 'country': country?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (countryId != null) 'countryId': countryId,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (deletedAt != null) 'deletedAt': deletedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (population != null) 'population': population,
      if (area != null) 'area': area,
      if (currency != null) 'currency': currency,
      if (timezone != null) 'timezone': timezone,
      if (districts != null)
        'districts':
            districts?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (country != null) 'country': country?.toJsonForProtocol(),
    };
  }

  static CityInclude include({
    _i2.DistrictIncludeList? districts,
    _i2.CountryInclude? country,
  }) {
    return CityInclude._(
      districts: districts,
      country: country,
    );
  }

  static CityIncludeList includeList({
    _i1.WhereExpressionBuilder<CityTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CityTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CityTable>? orderByList,
    CityInclude? include,
  }) {
    return CityIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(City.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(City.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CityImpl extends City {
  _CityImpl({
    int? id,
    String? name,
    int? countryId,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
    double? latitude,
    double? longitude,
    int? population,
    double? area,
    String? currency,
    String? timezone,
    List<_i2.District>? districts,
    _i2.Country? country,
  }) : super._(
          id: id,
          name: name,
          countryId: countryId,
          createdAt: createdAt,
          updatedAt: updatedAt,
          deletedAt: deletedAt,
          createdBy: createdBy,
          latitude: latitude,
          longitude: longitude,
          population: population,
          area: area,
          currency: currency,
          timezone: timezone,
          districts: districts,
          country: country,
        );

  @override
  City copyWith({
    Object? id = _Undefined,
    Object? name = _Undefined,
    Object? countryId = _Undefined,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
    Object? deletedAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? latitude = _Undefined,
    Object? longitude = _Undefined,
    Object? population = _Undefined,
    Object? area = _Undefined,
    Object? currency = _Undefined,
    Object? timezone = _Undefined,
    Object? districts = _Undefined,
    Object? country = _Undefined,
  }) {
    return City(
      id: id is int? ? id : this.id,
      name: name is String? ? name : this.name,
      countryId: countryId is int? ? countryId : this.countryId,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
      deletedAt: deletedAt is DateTime? ? deletedAt : this.deletedAt,
      createdBy: createdBy is String? ? createdBy : this.createdBy,
      latitude: latitude is double? ? latitude : this.latitude,
      longitude: longitude is double? ? longitude : this.longitude,
      population: population is int? ? population : this.population,
      area: area is double? ? area : this.area,
      currency: currency is String? ? currency : this.currency,
      timezone: timezone is String? ? timezone : this.timezone,
      districts: districts is List<_i2.District>?
          ? districts
          : this.districts?.map((e0) => e0.copyWith()).toList(),
      country: country is _i2.Country? ? country : this.country?.copyWith(),
    );
  }
}

class CityTable extends _i1.Table {
  CityTable({super.tableRelation}) : super(tableName: 'city') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    countryId = _i1.ColumnInt(
      'countryId',
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
    currency = _i1.ColumnString(
      'currency',
      this,
    );
    timezone = _i1.ColumnString(
      'timezone',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnInt countryId;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  late final _i1.ColumnDateTime deletedAt;

  late final _i1.ColumnString createdBy;

  late final _i1.ColumnDouble latitude;

  late final _i1.ColumnDouble longitude;

  late final _i1.ColumnInt population;

  late final _i1.ColumnDouble area;

  late final _i1.ColumnString currency;

  late final _i1.ColumnString timezone;

  _i2.DistrictTable? ___districts;

  _i1.ManyRelation<_i2.DistrictTable>? _districts;

  _i2.CountryTable? _country;

  _i2.DistrictTable get __districts {
    if (___districts != null) return ___districts!;
    ___districts = _i1.createRelationTable(
      relationFieldName: '__districts',
      field: City.t.id,
      foreignField: _i2.District.t.cityId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.DistrictTable(tableRelation: foreignTableRelation),
    );
    return ___districts!;
  }

  _i2.CountryTable get country {
    if (_country != null) return _country!;
    _country = _i1.createRelationTable(
      relationFieldName: 'country',
      field: City.t.countryId,
      foreignField: _i2.Country.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CountryTable(tableRelation: foreignTableRelation),
    );
    return _country!;
  }

  _i1.ManyRelation<_i2.DistrictTable> get districts {
    if (_districts != null) return _districts!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'districts',
      field: City.t.id,
      foreignField: _i2.District.t.cityId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.DistrictTable(tableRelation: foreignTableRelation),
    );
    _districts = _i1.ManyRelation<_i2.DistrictTable>(
      tableWithRelations: relationTable,
      table: _i2.DistrictTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _districts!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        countryId,
        createdAt,
        updatedAt,
        deletedAt,
        createdBy,
        latitude,
        longitude,
        population,
        area,
        currency,
        timezone,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'districts') {
      return __districts;
    }
    if (relationField == 'country') {
      return country;
    }
    return null;
  }
}

class CityInclude extends _i1.IncludeObject {
  CityInclude._({
    _i2.DistrictIncludeList? districts,
    _i2.CountryInclude? country,
  }) {
    _districts = districts;
    _country = country;
  }

  _i2.DistrictIncludeList? _districts;

  _i2.CountryInclude? _country;

  @override
  Map<String, _i1.Include?> get includes => {
        'districts': _districts,
        'country': _country,
      };

  @override
  _i1.Table get table => City.t;
}

class CityIncludeList extends _i1.IncludeList {
  CityIncludeList._({
    _i1.WhereExpressionBuilder<CityTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(City.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => City.t;
}

class CityRepository {
  const CityRepository._();

  final attach = const CityAttachRepository._();

  final attachRow = const CityAttachRowRepository._();

  final detach = const CityDetachRepository._();

  final detachRow = const CityDetachRowRepository._();

  Future<List<City>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<CityTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CityTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CityTable>? orderByList,
    _i1.Transaction? transaction,
    CityInclude? include,
  }) async {
    return databaseAccessor.db.find<City>(
      where: where?.call(City.t),
      orderBy: orderBy?.call(City.t),
      orderByList: orderByList?.call(City.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<City?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<CityTable>? where,
    int? offset,
    _i1.OrderByBuilder<CityTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CityTable>? orderByList,
    _i1.Transaction? transaction,
    CityInclude? include,
  }) async {
    return databaseAccessor.db.findFirstRow<City>(
      where: where?.call(City.t),
      orderBy: orderBy?.call(City.t),
      orderByList: orderByList?.call(City.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<City?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
    CityInclude? include,
  }) async {
    return databaseAccessor.db.findById<City>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<List<City>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<City> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<City>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<City> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    City row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<City>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<City>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<City> rows, {
    _i1.ColumnSelections<CityTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<City>(
      rows,
      columns: columns?.call(City.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<City> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    City row, {
    _i1.ColumnSelections<CityTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<City>(
      row,
      columns: columns?.call(City.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<City>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<City> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<City>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<City> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    City row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<City>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<City>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<CityTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<City>(
      where: where(City.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<CityTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<City>(
      where: where?.call(City.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class CityAttachRepository {
  const CityAttachRepository._();

  Future<void> districts(
    _i1.DatabaseAccessor databaseAccessor,
    City city,
    List<_i2.District> district, {
    _i1.Transaction? transaction,
  }) async {
    if (district.any((e) => e.id == null)) {
      throw ArgumentError.notNull('district.id');
    }
    if (city.id == null) {
      throw ArgumentError.notNull('city.id');
    }

    var $district = district.map((e) => e.copyWith(cityId: city.id)).toList();
    await databaseAccessor.db.update<_i2.District>(
      $district,
      columns: [_i2.District.t.cityId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class CityAttachRowRepository {
  const CityAttachRowRepository._();

  Future<void> country(
    _i1.DatabaseAccessor databaseAccessor,
    City city,
    _i2.Country country, {
    _i1.Transaction? transaction,
  }) async {
    if (city.id == null) {
      throw ArgumentError.notNull('city.id');
    }
    if (country.id == null) {
      throw ArgumentError.notNull('country.id');
    }

    var $city = city.copyWith(countryId: country.id);
    await databaseAccessor.db.updateRow<City>(
      $city,
      columns: [City.t.countryId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<void> districts(
    _i1.DatabaseAccessor databaseAccessor,
    City city,
    _i2.District district, {
    _i1.Transaction? transaction,
  }) async {
    if (district.id == null) {
      throw ArgumentError.notNull('district.id');
    }
    if (city.id == null) {
      throw ArgumentError.notNull('city.id');
    }

    var $district = district.copyWith(cityId: city.id);
    await databaseAccessor.db.updateRow<_i2.District>(
      $district,
      columns: [_i2.District.t.cityId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class CityDetachRepository {
  const CityDetachRepository._();

  Future<void> districts(
    _i1.DatabaseAccessor databaseAccessor,
    List<_i2.District> district, {
    _i1.Transaction? transaction,
  }) async {
    if (district.any((e) => e.id == null)) {
      throw ArgumentError.notNull('district.id');
    }

    var $district = district.map((e) => e.copyWith(cityId: null)).toList();
    await databaseAccessor.db.update<_i2.District>(
      $district,
      columns: [_i2.District.t.cityId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class CityDetachRowRepository {
  const CityDetachRowRepository._();

  Future<void> country(
    _i1.DatabaseAccessor databaseAccessor,
    City city, {
    _i1.Transaction? transaction,
  }) async {
    if (city.id == null) {
      throw ArgumentError.notNull('city.id');
    }

    var $city = city.copyWith(countryId: null);
    await databaseAccessor.db.updateRow<City>(
      $city,
      columns: [City.t.countryId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<void> districts(
    _i1.DatabaseAccessor databaseAccessor,
    _i2.District district, {
    _i1.Transaction? transaction,
  }) async {
    if (district.id == null) {
      throw ArgumentError.notNull('district.id');
    }

    var $district = district.copyWith(cityId: null);
    await databaseAccessor.db.updateRow<_i2.District>(
      $district,
      columns: [_i2.District.t.cityId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
