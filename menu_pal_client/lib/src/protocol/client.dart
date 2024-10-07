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
import 'dart:async' as _i2;
import 'package:menu_pal_client/src/protocol/city.dart' as _i3;
import 'package:menu_pal_client/src/protocol/country.dart' as _i4;
import 'package:menu_pal_client/src/protocol/district.dart' as _i5;
import 'package:menu_pal_client/src/protocol/menu.dart' as _i6;
import 'package:menu_pal_client/src/protocol/restaurant_type.dart' as _i7;
import 'package:menu_pal_client/src/protocol/town.dart' as _i8;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i9;
import 'protocol.dart' as _i10;

/// {@category Endpoint}
class EndpointCities extends _i1.EndpointRef {
  EndpointCities(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'cities';

  _i2.Future<List<_i3.City>> getAllCities() =>
      caller.callServerEndpoint<List<_i3.City>>(
        'cities',
        'getAllCities',
        {},
      );

  _i2.Future<List<_i3.City>> getCitiesByCountry(int countryId) =>
      caller.callServerEndpoint<List<_i3.City>>(
        'cities',
        'getCitiesByCountry',
        {'countryId': countryId},
      );

  _i2.Future<_i3.City?> getCity(int id) => caller.callServerEndpoint<_i3.City?>(
        'cities',
        'getCity',
        {'id': id},
      );

  _i2.Future<_i3.City> addCity(_i3.City entity) =>
      caller.callServerEndpoint<_i3.City>(
        'cities',
        'addCity',
        {'entity': entity},
      );

  _i2.Future<_i3.City> deleteCity(_i3.City entity) =>
      caller.callServerEndpoint<_i3.City>(
        'cities',
        'deleteCity',
        {'entity': entity},
      );

  _i2.Future<_i3.City> updateCity(_i3.City entity) =>
      caller.callServerEndpoint<_i3.City>(
        'cities',
        'updateCity',
        {'entity': entity},
      );
}

/// {@category Endpoint}
class EndpointCountries extends _i1.EndpointRef {
  EndpointCountries(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'countries';

  _i2.Future<List<_i4.Country>> getAllCountries() =>
      caller.callServerEndpoint<List<_i4.Country>>(
        'countries',
        'getAllCountries',
        {},
      );

  _i2.Future<_i4.Country?> getCountry(int id) =>
      caller.callServerEndpoint<_i4.Country?>(
        'countries',
        'getCountry',
        {'id': id},
      );

  _i2.Future<_i4.Country> addCountry(_i4.Country entity) =>
      caller.callServerEndpoint<_i4.Country>(
        'countries',
        'addCountry',
        {'entity': entity},
      );

  _i2.Future<_i4.Country> deleteCountry(_i4.Country entity) =>
      caller.callServerEndpoint<_i4.Country>(
        'countries',
        'deleteCountry',
        {'entity': entity},
      );

  _i2.Future<_i4.Country> updateCountry(_i4.Country entity) =>
      caller.callServerEndpoint<_i4.Country>(
        'countries',
        'updateCountry',
        {'entity': entity},
      );
}

/// {@category Endpoint}
class EndpointDistricts extends _i1.EndpointRef {
  EndpointDistricts(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'districts';

  _i2.Future<List<_i5.District>> getAllDistricts() =>
      caller.callServerEndpoint<List<_i5.District>>(
        'districts',
        'getAllDistricts',
        {},
      );

  _i2.Future<List<_i5.District>> getDistrictsByCity(int cityId) =>
      caller.callServerEndpoint<List<_i5.District>>(
        'districts',
        'getDistrictsByCity',
        {'cityId': cityId},
      );

  _i2.Future<_i5.District?> getDistrict(int id) =>
      caller.callServerEndpoint<_i5.District?>(
        'districts',
        'getDistrict',
        {'id': id},
      );

  _i2.Future<_i5.District> addDistrict(_i5.District entity) =>
      caller.callServerEndpoint<_i5.District>(
        'districts',
        'addDistrict',
        {'entity': entity},
      );

  _i2.Future<_i5.District> deleteDistrict(_i5.District entity) =>
      caller.callServerEndpoint<_i5.District>(
        'districts',
        'deleteDistrict',
        {'entity': entity},
      );

  _i2.Future<_i5.District> updateDistrict(_i5.District entity) =>
      caller.callServerEndpoint<_i5.District>(
        'districts',
        'updateDistrict',
        {'entity': entity},
      );
}

/// {@category Endpoint}
class EndpointMenus extends _i1.EndpointRef {
  EndpointMenus(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'menus';

  _i2.Future<String?> addMenu(_i6.Menu menu) =>
      caller.callServerEndpoint<String?>(
        'menus',
        'addMenu',
        {'menu': menu},
      );

  _i2.Future<void> deleteMenu(_i6.Menu menu) => caller.callServerEndpoint<void>(
        'menus',
        'deleteMenu',
        {'menu': menu},
      );

  _i2.Future<List<_i6.Menu>> getAllMenus() =>
      caller.callServerEndpoint<List<_i6.Menu>>(
        'menus',
        'getAllMenus',
        {},
      );
}

/// {@category Endpoint}
class EndpointRestaurantTypes extends _i1.EndpointRef {
  EndpointRestaurantTypes(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'restaurantTypes';

  _i2.Future<List<_i7.RestaurantType>> getAllRestaurantTypes() =>
      caller.callServerEndpoint<List<_i7.RestaurantType>>(
        'restaurantTypes',
        'getAllRestaurantTypes',
        {},
      );

  _i2.Future<_i7.RestaurantType?> getRestaurantType(int id) =>
      caller.callServerEndpoint<_i7.RestaurantType?>(
        'restaurantTypes',
        'getRestaurantType',
        {'id': id},
      );

  _i2.Future<_i7.RestaurantType> addRestaurantType(_i7.RestaurantType value) =>
      caller.callServerEndpoint<_i7.RestaurantType>(
        'restaurantTypes',
        'addRestaurantType',
        {'value': value},
      );

  _i2.Future<_i7.RestaurantType> deleteRestaurantType(
          _i7.RestaurantType value) =>
      caller.callServerEndpoint<_i7.RestaurantType>(
        'restaurantTypes',
        'deleteRestaurantType',
        {'value': value},
      );

  _i2.Future<_i7.RestaurantType> updateRestaurantType(
          _i7.RestaurantType value) =>
      caller.callServerEndpoint<_i7.RestaurantType>(
        'restaurantTypes',
        'updateRestaurantType',
        {'value': value},
      );
}

/// {@category Endpoint}
class EndpointTowns extends _i1.EndpointRef {
  EndpointTowns(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'towns';

  _i2.Future<List<_i8.Town>> getAllTowns() =>
      caller.callServerEndpoint<List<_i8.Town>>(
        'towns',
        'getAllTowns',
        {},
      );

  _i2.Future<List<_i8.Town>> getTownsByDistrict(int districtId) =>
      caller.callServerEndpoint<List<_i8.Town>>(
        'towns',
        'getTownsByDistrict',
        {'districtId': districtId},
      );

  _i2.Future<_i8.Town?> getTown(int id) => caller.callServerEndpoint<_i8.Town?>(
        'towns',
        'getTown',
        {'id': id},
      );

  _i2.Future<_i8.Town> addTown(_i8.Town entity) =>
      caller.callServerEndpoint<_i8.Town>(
        'towns',
        'addTown',
        {'entity': entity},
      );

  _i2.Future<_i8.Town> deleteTown(_i8.Town entity) =>
      caller.callServerEndpoint<_i8.Town>(
        'towns',
        'deleteTown',
        {'entity': entity},
      );

  _i2.Future<_i8.Town> updateTown(_i8.Town entity) =>
      caller.callServerEndpoint<_i8.Town>(
        'towns',
        'updateTown',
        {'entity': entity},
      );
}

/// {@category Endpoint}
class EndpointWorkPlace extends _i1.EndpointRef {
  EndpointWorkPlace(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'workPlace';

  _i2.Future<void> workHere(String name) => caller.callServerEndpoint<void>(
        'workPlace',
        'workHere',
        {'name': name},
      );

  _i2.Future<void> getDistrictByCity() => caller.callServerEndpoint<void>(
        'workPlace',
        'getDistrictByCity',
        {},
      );

  _i2.Future<void> getTownByDistrict() => caller.callServerEndpoint<void>(
        'workPlace',
        'getTownByDistrict',
        {},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i9.Caller(client);
  }

  late final _i9.Caller auth;
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i10.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    cities = EndpointCities(this);
    countries = EndpointCountries(this);
    districts = EndpointDistricts(this);
    menus = EndpointMenus(this);
    restaurantTypes = EndpointRestaurantTypes(this);
    towns = EndpointTowns(this);
    workPlace = EndpointWorkPlace(this);
    modules = _Modules(this);
  }

  late final EndpointCities cities;

  late final EndpointCountries countries;

  late final EndpointDistricts districts;

  late final EndpointMenus menus;

  late final EndpointRestaurantTypes restaurantTypes;

  late final EndpointTowns towns;

  late final EndpointWorkPlace workPlace;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'cities': cities,
        'countries': countries,
        'districts': districts,
        'menus': menus,
        'restaurantTypes': restaurantTypes,
        'towns': towns,
        'workPlace': workPlace,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
