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

abstract class Menu implements _i1.TableRow, _i1.ProtocolSerialization {
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

  static final t = MenuTable();

  static const db = MenuRepository._();

  @override
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

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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
        'addresses':
            addresses?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (restaurantTypes != null)
        'restaurantTypes':
            restaurantTypes?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static MenuInclude include({_i2.AddressIncludeList? addresses}) {
    return MenuInclude._(addresses: addresses);
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
    restaurantTypeIds = _i1.ColumnSerializable(
      'restaurantTypeIds',
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
    deletedBy = _i1.ColumnString(
      'deletedBy',
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
    restaurantTypes = _i1.ColumnSerializable(
      'restaurantTypes',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnString description;

  late final _i1.ColumnString thumbnail;

  late final _i1.ColumnString link;

  late final _i1.ColumnString brand;

  late final _i1.ColumnSerializable restaurantTypeIds;

  late final _i1.ColumnInt star;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  late final _i1.ColumnDateTime deletedAt;

  late final _i1.ColumnString createdBy;

  late final _i1.ColumnString deletedBy;

  late final _i1.ColumnInt city;

  late final _i1.ColumnInt country;

  late final _i1.ColumnInt category;

  late final _i1.ColumnSerializable tags;

  late final _i1.ColumnString phone;

  late final _i1.ColumnString email;

  _i2.AddressTable? ___addresses;

  _i1.ManyRelation<_i2.AddressTable>? _addresses;

  late final _i1.ColumnSerializable restaurantTypes;

  _i2.AddressTable get __addresses {
    if (___addresses != null) return ___addresses!;
    ___addresses = _i1.createRelationTable(
      relationFieldName: '__addresses',
      field: Menu.t.id,
      foreignField: _i2.Address.t.menuId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.AddressTable(tableRelation: foreignTableRelation),
    );
    return ___addresses!;
  }

  _i1.ManyRelation<_i2.AddressTable> get addresses {
    if (_addresses != null) return _addresses!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'addresses',
      field: Menu.t.id,
      foreignField: _i2.Address.t.menuId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.AddressTable(tableRelation: foreignTableRelation),
    );
    _addresses = _i1.ManyRelation<_i2.AddressTable>(
      tableWithRelations: relationTable,
      table: _i2.AddressTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _addresses!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        description,
        thumbnail,
        link,
        brand,
        restaurantTypeIds,
        star,
        createdAt,
        updatedAt,
        deletedAt,
        createdBy,
        deletedBy,
        city,
        country,
        category,
        tags,
        phone,
        email,
        restaurantTypes,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'addresses') {
      return __addresses;
    }
    return null;
  }
}

class MenuInclude extends _i1.IncludeObject {
  MenuInclude._({_i2.AddressIncludeList? addresses}) {
    _addresses = addresses;
  }

  _i2.AddressIncludeList? _addresses;

  @override
  Map<String, _i1.Include?> get includes => {'addresses': _addresses};

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

  final attach = const MenuAttachRepository._();

  final attachRow = const MenuAttachRowRepository._();

  final detach = const MenuDetachRepository._();

  final detachRow = const MenuDetachRowRepository._();

  Future<List<Menu>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<MenuTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MenuTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MenuTable>? orderByList,
    _i1.Transaction? transaction,
    MenuInclude? include,
  }) async {
    return databaseAccessor.db.find<Menu>(
      where: where?.call(Menu.t),
      orderBy: orderBy?.call(Menu.t),
      orderByList: orderByList?.call(Menu.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
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
    MenuInclude? include,
  }) async {
    return databaseAccessor.db.findFirstRow<Menu>(
      where: where?.call(Menu.t),
      orderBy: orderBy?.call(Menu.t),
      orderByList: orderByList?.call(Menu.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<Menu?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
    MenuInclude? include,
  }) async {
    return databaseAccessor.db.findById<Menu>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
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

class MenuAttachRepository {
  const MenuAttachRepository._();

  Future<void> addresses(
    _i1.DatabaseAccessor databaseAccessor,
    Menu menu,
    List<_i2.Address> address, {
    _i1.Transaction? transaction,
  }) async {
    if (address.any((e) => e.id == null)) {
      throw ArgumentError.notNull('address.id');
    }
    if (menu.id == null) {
      throw ArgumentError.notNull('menu.id');
    }

    var $address = address.map((e) => e.copyWith(menuId: menu.id)).toList();
    await databaseAccessor.db.update<_i2.Address>(
      $address,
      columns: [_i2.Address.t.menuId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class MenuAttachRowRepository {
  const MenuAttachRowRepository._();

  Future<void> addresses(
    _i1.DatabaseAccessor databaseAccessor,
    Menu menu,
    _i2.Address address, {
    _i1.Transaction? transaction,
  }) async {
    if (address.id == null) {
      throw ArgumentError.notNull('address.id');
    }
    if (menu.id == null) {
      throw ArgumentError.notNull('menu.id');
    }

    var $address = address.copyWith(menuId: menu.id);
    await databaseAccessor.db.updateRow<_i2.Address>(
      $address,
      columns: [_i2.Address.t.menuId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class MenuDetachRepository {
  const MenuDetachRepository._();

  Future<void> addresses(
    _i1.DatabaseAccessor databaseAccessor,
    List<_i2.Address> address, {
    _i1.Transaction? transaction,
  }) async {
    if (address.any((e) => e.id == null)) {
      throw ArgumentError.notNull('address.id');
    }

    var $address = address.map((e) => e.copyWith(menuId: null)).toList();
    await databaseAccessor.db.update<_i2.Address>(
      $address,
      columns: [_i2.Address.t.menuId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class MenuDetachRowRepository {
  const MenuDetachRowRepository._();

  Future<void> addresses(
    _i1.DatabaseAccessor databaseAccessor,
    _i2.Address address, {
    _i1.Transaction? transaction,
  }) async {
    if (address.id == null) {
      throw ArgumentError.notNull('address.id');
    }

    var $address = address.copyWith(menuId: null);
    await databaseAccessor.db.updateRow<_i2.Address>(
      $address,
      columns: [_i2.Address.t.menuId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
