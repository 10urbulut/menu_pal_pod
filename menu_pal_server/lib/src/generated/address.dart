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

abstract class Address implements _i1.TableRow, _i1.ProtocolSerialization {
  Address._({
    this.id,
    this.street,
    this.city,
    this.town,
    this.district,
    this.country,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.createdBy,
    this.latitude,
    this.longitude,
    this.population,
    this.area,
  });

  factory Address({
    int? id,
    String? street,
    int? city,
    int? town,
    int? district,
    int? country,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
    double? latitude,
    double? longitude,
    int? population,
    double? area,
  }) = _AddressImpl;

  factory Address.fromJson(Map<String, dynamic> jsonSerialization) {
    return Address(
      id: jsonSerialization['id'] as int?,
      street: jsonSerialization['street'] as String?,
      city: jsonSerialization['city'] as int?,
      town: jsonSerialization['town'] as int?,
      district: jsonSerialization['district'] as int?,
      country: jsonSerialization['country'] as int?,
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
    );
  }

  static final t = AddressTable();

  static const db = AddressRepository._();

  @override
  int? id;

  String? street;

  int? city;

  int? town;

  int? district;

  int? country;

  DateTime? createdAt;

  DateTime? updatedAt;

  DateTime? deletedAt;

  String? createdBy;

  double? latitude;

  double? longitude;

  int? population;

  double? area;

  @override
  _i1.Table get table => t;

  Address copyWith({
    int? id,
    String? street,
    int? city,
    int? town,
    int? district,
    int? country,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
    double? latitude,
    double? longitude,
    int? population,
    double? area,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (street != null) 'street': street,
      if (city != null) 'city': city,
      if (town != null) 'town': town,
      if (district != null) 'district': district,
      if (country != null) 'country': country,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (deletedAt != null) 'deletedAt': deletedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (population != null) 'population': population,
      if (area != null) 'area': area,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      if (street != null) 'street': street,
      if (city != null) 'city': city,
      if (town != null) 'town': town,
      if (district != null) 'district': district,
      if (country != null) 'country': country,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (deletedAt != null) 'deletedAt': deletedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (population != null) 'population': population,
      if (area != null) 'area': area,
    };
  }

  static AddressInclude include() {
    return AddressInclude._();
  }

  static AddressIncludeList includeList({
    _i1.WhereExpressionBuilder<AddressTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AddressTable>? orderByList,
    AddressInclude? include,
  }) {
    return AddressIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Address.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Address.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AddressImpl extends Address {
  _AddressImpl({
    int? id,
    String? street,
    int? city,
    int? town,
    int? district,
    int? country,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
    double? latitude,
    double? longitude,
    int? population,
    double? area,
  }) : super._(
          id: id,
          street: street,
          city: city,
          town: town,
          district: district,
          country: country,
          createdAt: createdAt,
          updatedAt: updatedAt,
          deletedAt: deletedAt,
          createdBy: createdBy,
          latitude: latitude,
          longitude: longitude,
          population: population,
          area: area,
        );

  @override
  Address copyWith({
    Object? id = _Undefined,
    Object? street = _Undefined,
    Object? city = _Undefined,
    Object? town = _Undefined,
    Object? district = _Undefined,
    Object? country = _Undefined,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
    Object? deletedAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? latitude = _Undefined,
    Object? longitude = _Undefined,
    Object? population = _Undefined,
    Object? area = _Undefined,
  }) {
    return Address(
      id: id is int? ? id : this.id,
      street: street is String? ? street : this.street,
      city: city is int? ? city : this.city,
      town: town is int? ? town : this.town,
      district: district is int? ? district : this.district,
      country: country is int? ? country : this.country,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
      deletedAt: deletedAt is DateTime? ? deletedAt : this.deletedAt,
      createdBy: createdBy is String? ? createdBy : this.createdBy,
      latitude: latitude is double? ? latitude : this.latitude,
      longitude: longitude is double? ? longitude : this.longitude,
      population: population is int? ? population : this.population,
      area: area is double? ? area : this.area,
    );
  }
}

class AddressTable extends _i1.Table {
  AddressTable({super.tableRelation}) : super(tableName: 'address') {
    street = _i1.ColumnString(
      'street',
      this,
    );
    city = _i1.ColumnInt(
      'city',
      this,
    );
    town = _i1.ColumnInt(
      'town',
      this,
    );
    district = _i1.ColumnInt(
      'district',
      this,
    );
    country = _i1.ColumnInt(
      'country',
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
  }

  late final _i1.ColumnString street;

  late final _i1.ColumnInt city;

  late final _i1.ColumnInt town;

  late final _i1.ColumnInt district;

  late final _i1.ColumnInt country;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  late final _i1.ColumnDateTime deletedAt;

  late final _i1.ColumnString createdBy;

  late final _i1.ColumnDouble latitude;

  late final _i1.ColumnDouble longitude;

  late final _i1.ColumnInt population;

  late final _i1.ColumnDouble area;

  @override
  List<_i1.Column> get columns => [
        id,
        street,
        city,
        town,
        district,
        country,
        createdAt,
        updatedAt,
        deletedAt,
        createdBy,
        latitude,
        longitude,
        population,
        area,
      ];
}

class AddressInclude extends _i1.IncludeObject {
  AddressInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Address.t;
}

class AddressIncludeList extends _i1.IncludeList {
  AddressIncludeList._({
    _i1.WhereExpressionBuilder<AddressTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Address.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Address.t;
}

class AddressRepository {
  const AddressRepository._();

  Future<List<Address>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<AddressTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AddressTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.find<Address>(
      where: where?.call(Address.t),
      orderBy: orderBy?.call(Address.t),
      orderByList: orderByList?.call(Address.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Address?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<AddressTable>? where,
    int? offset,
    _i1.OrderByBuilder<AddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AddressTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findFirstRow<Address>(
      where: where?.call(Address.t),
      orderBy: orderBy?.call(Address.t),
      orderByList: orderByList?.call(Address.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Address?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findById<Address>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Address>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<Address> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<Address>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Address> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    Address row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<Address>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Address>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<Address> rows, {
    _i1.ColumnSelections<AddressTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<Address>(
      rows,
      columns: columns?.call(Address.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Address> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    Address row, {
    _i1.ColumnSelections<AddressTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<Address>(
      row,
      columns: columns?.call(Address.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Address>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<Address> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<Address>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Address> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    Address row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<Address>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Address>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<AddressTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<Address>(
      where: where(Address.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<AddressTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<Address>(
      where: where?.call(Address.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
