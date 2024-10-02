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

abstract class Country implements _i1.TableRow, _i1.ProtocolSerialization {
  Country._({
    this.id,
    this.name,
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
    this.cities,
  });

  factory Country({
    int? id,
    String? name,
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
    List<_i2.City>? cities,
  }) = _CountryImpl;

  factory Country.fromJson(Map<String, dynamic> jsonSerialization) {
    return Country(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String?,
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
      cities: (jsonSerialization['cities'] as List?)
          ?.map((e) => _i2.City.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = CountryTable();

  static const db = CountryRepository._();

  @override
  int? id;

  String? name;

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

  List<_i2.City>? cities;

  @override
  _i1.Table get table => t;

  Country copyWith({
    int? id,
    String? name,
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
    List<_i2.City>? cities,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
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
      if (cities != null)
        'cities': cities?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
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
      if (cities != null)
        'cities': cities?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static CountryInclude include({_i2.CityIncludeList? cities}) {
    return CountryInclude._(cities: cities);
  }

  static CountryIncludeList includeList({
    _i1.WhereExpressionBuilder<CountryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CountryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CountryTable>? orderByList,
    CountryInclude? include,
  }) {
    return CountryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Country.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Country.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CountryImpl extends Country {
  _CountryImpl({
    int? id,
    String? name,
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
    List<_i2.City>? cities,
  }) : super._(
          id: id,
          name: name,
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
          cities: cities,
        );

  @override
  Country copyWith({
    Object? id = _Undefined,
    Object? name = _Undefined,
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
    Object? cities = _Undefined,
  }) {
    return Country(
      id: id is int? ? id : this.id,
      name: name is String? ? name : this.name,
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
      cities: cities is List<_i2.City>?
          ? cities
          : this.cities?.map((e0) => e0.copyWith()).toList(),
    );
  }
}

class CountryTable extends _i1.Table {
  CountryTable({super.tableRelation}) : super(tableName: 'country') {
    name = _i1.ColumnString(
      'name',
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

  _i2.CityTable? ___cities;

  _i1.ManyRelation<_i2.CityTable>? _cities;

  _i2.CityTable get __cities {
    if (___cities != null) return ___cities!;
    ___cities = _i1.createRelationTable(
      relationFieldName: '__cities',
      field: Country.t.id,
      foreignField: _i2.City.t.countryId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CityTable(tableRelation: foreignTableRelation),
    );
    return ___cities!;
  }

  _i1.ManyRelation<_i2.CityTable> get cities {
    if (_cities != null) return _cities!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'cities',
      field: Country.t.id,
      foreignField: _i2.City.t.countryId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CityTable(tableRelation: foreignTableRelation),
    );
    _cities = _i1.ManyRelation<_i2.CityTable>(
      tableWithRelations: relationTable,
      table: _i2.CityTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _cities!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
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
    if (relationField == 'cities') {
      return __cities;
    }
    return null;
  }
}

class CountryInclude extends _i1.IncludeObject {
  CountryInclude._({_i2.CityIncludeList? cities}) {
    _cities = cities;
  }

  _i2.CityIncludeList? _cities;

  @override
  Map<String, _i1.Include?> get includes => {'cities': _cities};

  @override
  _i1.Table get table => Country.t;
}

class CountryIncludeList extends _i1.IncludeList {
  CountryIncludeList._({
    _i1.WhereExpressionBuilder<CountryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Country.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Country.t;
}

class CountryRepository {
  const CountryRepository._();

  final attach = const CountryAttachRepository._();

  final attachRow = const CountryAttachRowRepository._();

  final detach = const CountryDetachRepository._();

  final detachRow = const CountryDetachRowRepository._();

  Future<List<Country>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<CountryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CountryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CountryTable>? orderByList,
    _i1.Transaction? transaction,
    CountryInclude? include,
  }) async {
    return databaseAccessor.db.find<Country>(
      where: where?.call(Country.t),
      orderBy: orderBy?.call(Country.t),
      orderByList: orderByList?.call(Country.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<Country?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<CountryTable>? where,
    int? offset,
    _i1.OrderByBuilder<CountryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CountryTable>? orderByList,
    _i1.Transaction? transaction,
    CountryInclude? include,
  }) async {
    return databaseAccessor.db.findFirstRow<Country>(
      where: where?.call(Country.t),
      orderBy: orderBy?.call(Country.t),
      orderByList: orderByList?.call(Country.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<Country?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
    CountryInclude? include,
  }) async {
    return databaseAccessor.db.findById<Country>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<List<Country>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<Country> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<Country>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Country> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    Country row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<Country>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Country>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<Country> rows, {
    _i1.ColumnSelections<CountryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<Country>(
      rows,
      columns: columns?.call(Country.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Country> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    Country row, {
    _i1.ColumnSelections<CountryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<Country>(
      row,
      columns: columns?.call(Country.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Country>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<Country> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<Country>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Country> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    Country row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<Country>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Country>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<CountryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<Country>(
      where: where(Country.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<CountryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<Country>(
      where: where?.call(Country.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class CountryAttachRepository {
  const CountryAttachRepository._();

  Future<void> cities(
    _i1.DatabaseAccessor databaseAccessor,
    Country country,
    List<_i2.City> city, {
    _i1.Transaction? transaction,
  }) async {
    if (city.any((e) => e.id == null)) {
      throw ArgumentError.notNull('city.id');
    }
    if (country.id == null) {
      throw ArgumentError.notNull('country.id');
    }

    var $city = city.map((e) => e.copyWith(countryId: country.id)).toList();
    await databaseAccessor.db.update<_i2.City>(
      $city,
      columns: [_i2.City.t.countryId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class CountryAttachRowRepository {
  const CountryAttachRowRepository._();

  Future<void> cities(
    _i1.DatabaseAccessor databaseAccessor,
    Country country,
    _i2.City city, {
    _i1.Transaction? transaction,
  }) async {
    if (city.id == null) {
      throw ArgumentError.notNull('city.id');
    }
    if (country.id == null) {
      throw ArgumentError.notNull('country.id');
    }

    var $city = city.copyWith(countryId: country.id);
    await databaseAccessor.db.updateRow<_i2.City>(
      $city,
      columns: [_i2.City.t.countryId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class CountryDetachRepository {
  const CountryDetachRepository._();

  Future<void> cities(
    _i1.DatabaseAccessor databaseAccessor,
    List<_i2.City> city, {
    _i1.Transaction? transaction,
  }) async {
    if (city.any((e) => e.id == null)) {
      throw ArgumentError.notNull('city.id');
    }

    var $city = city.map((e) => e.copyWith(countryId: null)).toList();
    await databaseAccessor.db.update<_i2.City>(
      $city,
      columns: [_i2.City.t.countryId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class CountryDetachRowRepository {
  const CountryDetachRowRepository._();

  Future<void> cities(
    _i1.DatabaseAccessor databaseAccessor,
    _i2.City city, {
    _i1.Transaction? transaction,
  }) async {
    if (city.id == null) {
      throw ArgumentError.notNull('city.id');
    }

    var $city = city.copyWith(countryId: null);
    await databaseAccessor.db.updateRow<_i2.City>(
      $city,
      columns: [_i2.City.t.countryId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
