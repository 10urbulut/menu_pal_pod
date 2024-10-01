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

abstract class Menu extends _i1.TableRow implements _i1.ProtocolSerialization {
  Menu._({
    int? id,
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
  }) : super(id);

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

  static final t = MenuTable();

  static const db = MenuRepository._();

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

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static MenuInclude include() {
    return MenuInclude._();
  }

  static MenuIncludeList includeList({
    _i1.WhereExpressionBuilder<MenuTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MenuTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MenuTable>? orderByList,
    MenuInclude? include,
  }) {
    return MenuIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Menu.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Menu.t),
      include: include,
    );
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

class MenuTable extends _i1.Table {
  MenuTable({super.tableRelation}) : super(tableName: 'menu') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    thumbnail = _i1.ColumnString(
      'thumbnail',
      this,
    );
    link = _i1.ColumnString(
      'link',
      this,
    );
    brand = _i1.ColumnString(
      'brand',
      this,
    );
    type = _i1.ColumnString(
      'type',
      this,
    );
    star = _i1.ColumnInt(
      'star',
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
    city = _i1.ColumnInt(
      'city',
      this,
    );
    country = _i1.ColumnInt(
      'country',
      this,
    );
    category = _i1.ColumnInt(
      'category',
      this,
    );
    tags = _i1.ColumnSerializable(
      'tags',
      this,
    );
    phone = _i1.ColumnString(
      'phone',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    website = _i1.ColumnString(
      'website',
      this,
    );
    addressId = _i1.ColumnInt(
      'addressId',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnString description;

  late final _i1.ColumnString thumbnail;

  late final _i1.ColumnString link;

  late final _i1.ColumnString brand;

  late final _i1.ColumnString type;

  late final _i1.ColumnInt star;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  late final _i1.ColumnDateTime deletedAt;

  late final _i1.ColumnString createdBy;

  late final _i1.ColumnInt city;

  late final _i1.ColumnInt country;

  late final _i1.ColumnInt category;

  late final _i1.ColumnSerializable tags;

  late final _i1.ColumnString phone;

  late final _i1.ColumnString email;

  late final _i1.ColumnString website;

  late final _i1.ColumnInt addressId;

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        description,
        thumbnail,
        link,
        brand,
        type,
        star,
        createdAt,
        updatedAt,
        deletedAt,
        createdBy,
        city,
        country,
        category,
        tags,
        phone,
        email,
        website,
        addressId,
      ];
}

class MenuInclude extends _i1.IncludeObject {
  MenuInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Menu.t;
}

class MenuIncludeList extends _i1.IncludeList {
  MenuIncludeList._({
    _i1.WhereExpressionBuilder<MenuTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Menu.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Menu.t;
}

class MenuRepository {
  const MenuRepository._();

  Future<List<Menu>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<MenuTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MenuTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MenuTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.find<Menu>(
      where: where?.call(Menu.t),
      orderBy: orderBy?.call(Menu.t),
      orderByList: orderByList?.call(Menu.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Menu?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<MenuTable>? where,
    int? offset,
    _i1.OrderByBuilder<MenuTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MenuTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findFirstRow<Menu>(
      where: where?.call(Menu.t),
      orderBy: orderBy?.call(Menu.t),
      orderByList: orderByList?.call(Menu.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Menu?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findById<Menu>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Menu>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<Menu> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<Menu>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Menu> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    Menu row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<Menu>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Menu>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<Menu> rows, {
    _i1.ColumnSelections<MenuTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<Menu>(
      rows,
      columns: columns?.call(Menu.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Menu> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    Menu row, {
    _i1.ColumnSelections<MenuTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<Menu>(
      row,
      columns: columns?.call(Menu.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Menu>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<Menu> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<Menu>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Menu> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    Menu row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<Menu>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Menu>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<MenuTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<Menu>(
      where: where(Menu.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<MenuTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<Menu>(
      where: where?.call(Menu.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
