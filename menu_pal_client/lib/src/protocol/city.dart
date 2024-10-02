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

abstract class City implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
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
