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

abstract class District implements _i1.SerializableModel {
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
    int? area,
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
      area: jsonSerialization['area'] as int?,
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
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

  int? area;

  String? timezone;

  _i2.City? city;

  List<_i2.Town>? towns;

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
    int? area,
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
    int? area,
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
      area: area is int? ? area : this.area,
      timezone: timezone is String? ? timezone : this.timezone,
      city: city is _i2.City? ? city : this.city?.copyWith(),
      towns: towns is List<_i2.Town>?
          ? towns
          : this.towns?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
