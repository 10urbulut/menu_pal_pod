/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class Address implements _i1.SerializableModel {
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
    this.menuId,
    this.menu,
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
    int? menuId,
    _i2.Menu? menu,
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
      menuId: jsonSerialization['menuId'] as int?,
      menu: jsonSerialization['menu'] == null
          ? null
          : _i2.Menu.fromJson(
              (jsonSerialization['menu'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
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

  int? menuId;

  _i2.Menu? menu;

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
    int? menuId,
    _i2.Menu? menu,
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
      if (menuId != null) 'menuId': menuId,
      if (menu != null) 'menu': menu?.toJson(),
    };
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
    int? menuId,
    _i2.Menu? menu,
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
          menuId: menuId,
          menu: menu,
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
    Object? menuId = _Undefined,
    Object? menu = _Undefined,
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
      menuId: menuId is int? ? menuId : this.menuId,
      menu: menu is _i2.Menu? ? menu : this.menu?.copyWith(),
    );
  }
}
