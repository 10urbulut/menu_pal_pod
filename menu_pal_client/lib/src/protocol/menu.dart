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

abstract class Menu implements _i1.SerializableModel {
  Menu._({
    this.id,
    this.title,
    this.description,
    this.thumbnail,
    this.link,
    this.brand,
    this.restaurantTypeIds,
    this.star,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.createdBy,
    this.deletedBy,
    this.city,
    this.country,
    this.category,
    this.tags,
    this.phone,
    this.email,
    this.addresses,
    this.restaurantTypes,
  });

  factory Menu({
    int? id,
    String? title,
    String? description,
    String? thumbnail,
    String? link,
    String? brand,
    List<int>? restaurantTypeIds,
    int? star,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
    String? deletedBy,
    int? city,
    int? country,
    int? category,
    List<String>? tags,
    String? phone,
    String? email,
    List<_i2.Address>? addresses,
    List<_i2.RestaurantType>? restaurantTypes,
  }) = _MenuImpl;

  factory Menu.fromJson(Map<String, dynamic> jsonSerialization) {
    return Menu(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String?,
      description: jsonSerialization['description'] as String?,
      thumbnail: jsonSerialization['thumbnail'] as String?,
      link: jsonSerialization['link'] as String?,
      brand: jsonSerialization['brand'] as String?,
      restaurantTypeIds: (jsonSerialization['restaurantTypeIds'] as List?)
          ?.map((e) => e as int)
          .toList(),
      star: jsonSerialization['star'] as int?,
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
      deletedBy: jsonSerialization['deletedBy'] as String?,
      city: jsonSerialization['city'] as int?,
      country: jsonSerialization['country'] as int?,
      category: jsonSerialization['category'] as int?,
      tags: (jsonSerialization['tags'] as List?)
          ?.map((e) => e as String)
          .toList(),
      phone: jsonSerialization['phone'] as String?,
      email: jsonSerialization['email'] as String?,
      addresses: (jsonSerialization['addresses'] as List?)
          ?.map((e) => _i2.Address.fromJson((e as Map<String, dynamic>)))
          .toList(),
      restaurantTypes: (jsonSerialization['restaurantTypes'] as List?)
          ?.map((e) => _i2.RestaurantType.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String? title;

  String? description;

  String? thumbnail;

  String? link;

  String? brand;

  List<int>? restaurantTypeIds;

  int? star;

  DateTime? createdAt;

  DateTime? updatedAt;

  DateTime? deletedAt;

  String? createdBy;

  String? deletedBy;

  int? city;

  int? country;

  int? category;

  List<String>? tags;

  String? phone;

  String? email;

  List<_i2.Address>? addresses;

  List<_i2.RestaurantType>? restaurantTypes;

  Menu copyWith({
    int? id,
    String? title,
    String? description,
    String? thumbnail,
    String? link,
    String? brand,
    List<int>? restaurantTypeIds,
    int? star,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
    String? deletedBy,
    int? city,
    int? country,
    int? category,
    List<String>? tags,
    String? phone,
    String? email,
    List<_i2.Address>? addresses,
    List<_i2.RestaurantType>? restaurantTypes,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (thumbnail != null) 'thumbnail': thumbnail,
      if (link != null) 'link': link,
      if (brand != null) 'brand': brand,
      if (restaurantTypeIds != null)
        'restaurantTypeIds': restaurantTypeIds?.toJson(),
      if (star != null) 'star': star,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (deletedAt != null) 'deletedAt': deletedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy,
      if (deletedBy != null) 'deletedBy': deletedBy,
      if (city != null) 'city': city,
      if (country != null) 'country': country,
      if (category != null) 'category': category,
      if (tags != null) 'tags': tags?.toJson(),
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (addresses != null)
        'addresses': addresses?.toJson(valueToJson: (v) => v.toJson()),
      if (restaurantTypes != null)
        'restaurantTypes':
            restaurantTypes?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MenuImpl extends Menu {
  _MenuImpl({
    int? id,
    String? title,
    String? description,
    String? thumbnail,
    String? link,
    String? brand,
    List<int>? restaurantTypeIds,
    int? star,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
    String? deletedBy,
    int? city,
    int? country,
    int? category,
    List<String>? tags,
    String? phone,
    String? email,
    List<_i2.Address>? addresses,
    List<_i2.RestaurantType>? restaurantTypes,
  }) : super._(
          id: id,
          title: title,
          description: description,
          thumbnail: thumbnail,
          link: link,
          brand: brand,
          restaurantTypeIds: restaurantTypeIds,
          star: star,
          createdAt: createdAt,
          updatedAt: updatedAt,
          deletedAt: deletedAt,
          createdBy: createdBy,
          deletedBy: deletedBy,
          city: city,
          country: country,
          category: category,
          tags: tags,
          phone: phone,
          email: email,
          addresses: addresses,
          restaurantTypes: restaurantTypes,
        );

  @override
  Menu copyWith({
    Object? id = _Undefined,
    Object? title = _Undefined,
    Object? description = _Undefined,
    Object? thumbnail = _Undefined,
    Object? link = _Undefined,
    Object? brand = _Undefined,
    Object? restaurantTypeIds = _Undefined,
    Object? star = _Undefined,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
    Object? deletedAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? deletedBy = _Undefined,
    Object? city = _Undefined,
    Object? country = _Undefined,
    Object? category = _Undefined,
    Object? tags = _Undefined,
    Object? phone = _Undefined,
    Object? email = _Undefined,
    Object? addresses = _Undefined,
    Object? restaurantTypes = _Undefined,
  }) {
    return Menu(
      id: id is int? ? id : this.id,
      title: title is String? ? title : this.title,
      description: description is String? ? description : this.description,
      thumbnail: thumbnail is String? ? thumbnail : this.thumbnail,
      link: link is String? ? link : this.link,
      brand: brand is String? ? brand : this.brand,
      restaurantTypeIds: restaurantTypeIds is List<int>?
          ? restaurantTypeIds
          : this.restaurantTypeIds?.map((e0) => e0).toList(),
      star: star is int? ? star : this.star,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
      deletedAt: deletedAt is DateTime? ? deletedAt : this.deletedAt,
      createdBy: createdBy is String? ? createdBy : this.createdBy,
      deletedBy: deletedBy is String? ? deletedBy : this.deletedBy,
      city: city is int? ? city : this.city,
      country: country is int? ? country : this.country,
      category: category is int? ? category : this.category,
      tags: tags is List<String>? ? tags : this.tags?.map((e0) => e0).toList(),
      phone: phone is String? ? phone : this.phone,
      email: email is String? ? email : this.email,
      addresses: addresses is List<_i2.Address>?
          ? addresses
          : this.addresses?.map((e0) => e0.copyWith()).toList(),
      restaurantTypes: restaurantTypes is List<_i2.RestaurantType>?
          ? restaurantTypes
          : this.restaurantTypes?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
