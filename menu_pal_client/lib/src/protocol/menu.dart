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

abstract class Menu implements _i1.SerializableModel {
  Menu._({
    this.id,
    this.title,
    this.description,
    this.thumbnail,
    this.link,
    this.brand,
    this.type,
    this.star,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.createdBy,
    this.city,
    this.country,
    this.category,
    this.tags,
    this.phone,
    this.email,
    this.website,
    this.addressId,
  });

  factory Menu({
    int? id,
    String? title,
    String? description,
    String? thumbnail,
    String? link,
    String? brand,
    String? type,
    int? star,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
    int? city,
    int? country,
    int? category,
    List<String>? tags,
    String? phone,
    String? email,
    String? website,
    int? addressId,
  }) = _MenuImpl;

  factory Menu.fromJson(Map<String, dynamic> jsonSerialization) {
    return Menu(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String?,
      description: jsonSerialization['description'] as String?,
      thumbnail: jsonSerialization['thumbnail'] as String?,
      link: jsonSerialization['link'] as String?,
      brand: jsonSerialization['brand'] as String?,
      type: jsonSerialization['type'] as String?,
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
      city: jsonSerialization['city'] as int?,
      country: jsonSerialization['country'] as int?,
      category: jsonSerialization['category'] as int?,
      tags: (jsonSerialization['tags'] as List?)
          ?.map((e) => e as String)
          .toList(),
      phone: jsonSerialization['phone'] as String?,
      email: jsonSerialization['email'] as String?,
      website: jsonSerialization['website'] as String?,
      addressId: jsonSerialization['addressId'] as int?,
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

  String? type;

  int? star;

  DateTime? createdAt;

  DateTime? updatedAt;

  DateTime? deletedAt;

  String? createdBy;

  int? city;

  int? country;

  int? category;

  List<String>? tags;

  String? phone;

  String? email;

  String? website;

  int? addressId;

  Menu copyWith({
    int? id,
    String? title,
    String? description,
    String? thumbnail,
    String? link,
    String? brand,
    String? type,
    int? star,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
    int? city,
    int? country,
    int? category,
    List<String>? tags,
    String? phone,
    String? email,
    String? website,
    int? addressId,
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
      if (type != null) 'type': type,
      if (star != null) 'star': star,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (deletedAt != null) 'deletedAt': deletedAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy,
      if (city != null) 'city': city,
      if (country != null) 'country': country,
      if (category != null) 'category': category,
      if (tags != null) 'tags': tags?.toJson(),
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (website != null) 'website': website,
      if (addressId != null) 'addressId': addressId,
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
    String? type,
    int? star,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? createdBy,
    int? city,
    int? country,
    int? category,
    List<String>? tags,
    String? phone,
    String? email,
    String? website,
    int? addressId,
  }) : super._(
          id: id,
          title: title,
          description: description,
          thumbnail: thumbnail,
          link: link,
          brand: brand,
          type: type,
          star: star,
          createdAt: createdAt,
          updatedAt: updatedAt,
          deletedAt: deletedAt,
          createdBy: createdBy,
          city: city,
          country: country,
          category: category,
          tags: tags,
          phone: phone,
          email: email,
          website: website,
          addressId: addressId,
        );

  @override
  Menu copyWith({
    Object? id = _Undefined,
    Object? title = _Undefined,
    Object? description = _Undefined,
    Object? thumbnail = _Undefined,
    Object? link = _Undefined,
    Object? brand = _Undefined,
    Object? type = _Undefined,
    Object? star = _Undefined,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
    Object? deletedAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? city = _Undefined,
    Object? country = _Undefined,
    Object? category = _Undefined,
    Object? tags = _Undefined,
    Object? phone = _Undefined,
    Object? email = _Undefined,
    Object? website = _Undefined,
    Object? addressId = _Undefined,
  }) {
    return Menu(
      id: id is int? ? id : this.id,
      title: title is String? ? title : this.title,
      description: description is String? ? description : this.description,
      thumbnail: thumbnail is String? ? thumbnail : this.thumbnail,
      link: link is String? ? link : this.link,
      brand: brand is String? ? brand : this.brand,
      type: type is String? ? type : this.type,
      star: star is int? ? star : this.star,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
      deletedAt: deletedAt is DateTime? ? deletedAt : this.deletedAt,
      createdBy: createdBy is String? ? createdBy : this.createdBy,
      city: city is int? ? city : this.city,
      country: country is int? ? country : this.country,
      category: category is int? ? category : this.category,
      tags: tags is List<String>? ? tags : this.tags?.map((e0) => e0).toList(),
      phone: phone is String? ? phone : this.phone,
      email: email is String? ? email : this.email,
      website: website is String? ? website : this.website,
      addressId: addressId is int? ? addressId : this.addressId,
    );
  }
}
