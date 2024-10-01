/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'address.dart' as _i2;
import 'city.dart' as _i3;
import 'country.dart' as _i4;
import 'district.dart' as _i5;
import 'example.dart' as _i6;
import 'menu.dart' as _i7;
import 'menu_type.dart' as _i8;
import 'town.dart' as _i9;
import 'package:menu_pal_client/src/protocol/menu_type.dart' as _i10;
import 'package:menu_pal_client/src/protocol/menu.dart' as _i11;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i12;
export 'address.dart';
export 'city.dart';
export 'country.dart';
export 'district.dart';
export 'example.dart';
export 'menu.dart';
export 'menu_type.dart';
export 'town.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Address) {
      return _i2.Address.fromJson(data) as T;
    }
    if (t == _i3.City) {
      return _i3.City.fromJson(data) as T;
    }
    if (t == _i4.Country) {
      return _i4.Country.fromJson(data) as T;
    }
    if (t == _i5.District) {
      return _i5.District.fromJson(data) as T;
    }
    if (t == _i6.Example) {
      return _i6.Example.fromJson(data) as T;
    }
    if (t == _i7.Menu) {
      return _i7.Menu.fromJson(data) as T;
    }
    if (t == _i8.MenuType) {
      return _i8.MenuType.fromJson(data) as T;
    }
    if (t == _i9.Town) {
      return _i9.Town.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Address?>()) {
      return (data != null ? _i2.Address.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.City?>()) {
      return (data != null ? _i3.City.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Country?>()) {
      return (data != null ? _i4.Country.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.District?>()) {
      return (data != null ? _i5.District.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Example?>()) {
      return (data != null ? _i6.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Menu?>()) {
      return (data != null ? _i7.Menu.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.MenuType?>()) {
      return (data != null ? _i8.MenuType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Town?>()) {
      return (data != null ? _i9.Town.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i10.MenuType>) {
      return (data as List).map((e) => deserialize<_i10.MenuType>(e)).toList()
          as dynamic;
    }
    if (t == List<_i11.Menu>) {
      return (data as List).map((e) => deserialize<_i11.Menu>(e)).toList()
          as dynamic;
    }
    try {
      return _i12.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.Address) {
      return 'Address';
    }
    if (data is _i3.City) {
      return 'City';
    }
    if (data is _i4.Country) {
      return 'Country';
    }
    if (data is _i5.District) {
      return 'District';
    }
    if (data is _i6.Example) {
      return 'Example';
    }
    if (data is _i7.Menu) {
      return 'Menu';
    }
    if (data is _i8.MenuType) {
      return 'MenuType';
    }
    if (data is _i9.Town) {
      return 'Town';
    }
    className = _i12.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Address') {
      return deserialize<_i2.Address>(data['data']);
    }
    if (data['className'] == 'City') {
      return deserialize<_i3.City>(data['data']);
    }
    if (data['className'] == 'Country') {
      return deserialize<_i4.Country>(data['data']);
    }
    if (data['className'] == 'District') {
      return deserialize<_i5.District>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i6.Example>(data['data']);
    }
    if (data['className'] == 'Menu') {
      return deserialize<_i7.Menu>(data['data']);
    }
    if (data['className'] == 'MenuType') {
      return deserialize<_i8.MenuType>(data['data']);
    }
    if (data['className'] == 'Town') {
      return deserialize<_i9.Town>(data['data']);
    }
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i12.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }
}
