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
import '../endpoints/cities_endpoint.dart' as _i2;
import '../endpoints/countries_endpoint.dart' as _i3;
import '../endpoints/districts_endpoint.dart' as _i4;
import '../endpoints/menu_types_endpoint.dart' as _i5;
import '../endpoints/menus_endpoint.dart' as _i6;
import '../endpoints/towns_endpoint.dart' as _i7;
import '../endpoints/workplace_endpoint.dart' as _i8;
import 'package:menu_pal_server/src/generated/city.dart' as _i9;
import 'package:menu_pal_server/src/generated/country.dart' as _i10;
import 'package:menu_pal_server/src/generated/district.dart' as _i11;
import 'package:menu_pal_server/src/generated/menu_type.dart' as _i12;
import 'package:menu_pal_server/src/generated/menu.dart' as _i13;
import 'package:menu_pal_server/src/generated/town.dart' as _i14;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i15;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'cities': _i2.CitiesEndpoint()
        ..initialize(
          server,
          'cities',
          null,
        ),
      'countries': _i3.CountriesEndpoint()
        ..initialize(
          server,
          'countries',
          null,
        ),
      'districts': _i4.DistrictsEndpoint()
        ..initialize(
          server,
          'districts',
          null,
        ),
      'menuTypes': _i5.MenuTypesEndpoint()
        ..initialize(
          server,
          'menuTypes',
          null,
        ),
      'menus': _i6.MenusEndpoint()
        ..initialize(
          server,
          'menus',
          null,
        ),
      'towns': _i7.TownsEndpoint()
        ..initialize(
          server,
          'towns',
          null,
        ),
      'workPlace': _i8.WorkPlaceEndpoint()
        ..initialize(
          server,
          'workPlace',
          null,
        ),
    };
    connectors['cities'] = _i1.EndpointConnector(
      name: 'cities',
      endpoint: endpoints['cities']!,
      methodConnectors: {
        'getAllCities': _i1.MethodConnector(
          name: 'getAllCities',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cities'] as _i2.CitiesEndpoint).getAllCities(session),
        ),
        'getCitiesByCountry': _i1.MethodConnector(
          name: 'getCitiesByCountry',
          params: {
            'countryId': _i1.ParameterDescription(
              name: 'countryId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cities'] as _i2.CitiesEndpoint).getCitiesByCountry(
            session,
            params['countryId'],
          ),
        ),
        'getCity': _i1.MethodConnector(
          name: 'getCity',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cities'] as _i2.CitiesEndpoint).getCity(
            session,
            params['id'],
          ),
        ),
        'addCity': _i1.MethodConnector(
          name: 'addCity',
          params: {
            'entity': _i1.ParameterDescription(
              name: 'entity',
              type: _i1.getType<_i9.City>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cities'] as _i2.CitiesEndpoint).addCity(
            session,
            params['entity'],
          ),
        ),
        'deleteCity': _i1.MethodConnector(
          name: 'deleteCity',
          params: {
            'entity': _i1.ParameterDescription(
              name: 'entity',
              type: _i1.getType<_i9.City>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cities'] as _i2.CitiesEndpoint).deleteCity(
            session,
            params['entity'],
          ),
        ),
        'updateCity': _i1.MethodConnector(
          name: 'updateCity',
          params: {
            'entity': _i1.ParameterDescription(
              name: 'entity',
              type: _i1.getType<_i9.City>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cities'] as _i2.CitiesEndpoint).updateCity(
            session,
            params['entity'],
          ),
        ),
      },
    );
    connectors['countries'] = _i1.EndpointConnector(
      name: 'countries',
      endpoint: endpoints['countries']!,
      methodConnectors: {
        'getAllCountries': _i1.MethodConnector(
          name: 'getAllCountries',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['countries'] as _i3.CountriesEndpoint)
                  .getAllCountries(session),
        ),
        'getCountry': _i1.MethodConnector(
          name: 'getCountry',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['countries'] as _i3.CountriesEndpoint).getCountry(
            session,
            params['id'],
          ),
        ),
        'addCountry': _i1.MethodConnector(
          name: 'addCountry',
          params: {
            'entity': _i1.ParameterDescription(
              name: 'entity',
              type: _i1.getType<_i10.Country>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['countries'] as _i3.CountriesEndpoint).addCountry(
            session,
            params['entity'],
          ),
        ),
        'deleteCountry': _i1.MethodConnector(
          name: 'deleteCountry',
          params: {
            'entity': _i1.ParameterDescription(
              name: 'entity',
              type: _i1.getType<_i10.Country>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['countries'] as _i3.CountriesEndpoint).deleteCountry(
            session,
            params['entity'],
          ),
        ),
        'updateCountry': _i1.MethodConnector(
          name: 'updateCountry',
          params: {
            'entity': _i1.ParameterDescription(
              name: 'entity',
              type: _i1.getType<_i10.Country>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['countries'] as _i3.CountriesEndpoint).updateCountry(
            session,
            params['entity'],
          ),
        ),
      },
    );
    connectors['districts'] = _i1.EndpointConnector(
      name: 'districts',
      endpoint: endpoints['districts']!,
      methodConnectors: {
        'getAllDistricts': _i1.MethodConnector(
          name: 'getAllDistricts',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['districts'] as _i4.DistrictsEndpoint)
                  .getAllDistricts(session),
        ),
        'getDistrictsByCity': _i1.MethodConnector(
          name: 'getDistrictsByCity',
          params: {
            'cityId': _i1.ParameterDescription(
              name: 'cityId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['districts'] as _i4.DistrictsEndpoint)
                  .getDistrictsByCity(
            session,
            params['cityId'],
          ),
        ),
        'getDistrict': _i1.MethodConnector(
          name: 'getDistrict',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['districts'] as _i4.DistrictsEndpoint).getDistrict(
            session,
            params['id'],
          ),
        ),
        'addDistrict': _i1.MethodConnector(
          name: 'addDistrict',
          params: {
            'entity': _i1.ParameterDescription(
              name: 'entity',
              type: _i1.getType<_i11.District>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['districts'] as _i4.DistrictsEndpoint).addDistrict(
            session,
            params['entity'],
          ),
        ),
        'deleteDistrict': _i1.MethodConnector(
          name: 'deleteDistrict',
          params: {
            'entity': _i1.ParameterDescription(
              name: 'entity',
              type: _i1.getType<_i11.District>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['districts'] as _i4.DistrictsEndpoint).deleteDistrict(
            session,
            params['entity'],
          ),
        ),
        'updateDistrict': _i1.MethodConnector(
          name: 'updateDistrict',
          params: {
            'entity': _i1.ParameterDescription(
              name: 'entity',
              type: _i1.getType<_i11.District>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['districts'] as _i4.DistrictsEndpoint).updateDistrict(
            session,
            params['entity'],
          ),
        ),
      },
    );
    connectors['menuTypes'] = _i1.EndpointConnector(
      name: 'menuTypes',
      endpoint: endpoints['menuTypes']!,
      methodConnectors: {
        'getAllMenuTypes': _i1.MethodConnector(
          name: 'getAllMenuTypes',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['menuTypes'] as _i5.MenuTypesEndpoint)
                  .getAllMenuTypes(session),
        ),
        'getMenuType': _i1.MethodConnector(
          name: 'getMenuType',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['menuTypes'] as _i5.MenuTypesEndpoint).getMenuType(
            session,
            params['id'],
          ),
        ),
        'addMenuType': _i1.MethodConnector(
          name: 'addMenuType',
          params: {
            'menuType': _i1.ParameterDescription(
              name: 'menuType',
              type: _i1.getType<_i12.MenuType>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['menuTypes'] as _i5.MenuTypesEndpoint).addMenuType(
            session,
            params['menuType'],
          ),
        ),
        'deleteMenuType': _i1.MethodConnector(
          name: 'deleteMenuType',
          params: {
            'menuType': _i1.ParameterDescription(
              name: 'menuType',
              type: _i1.getType<_i12.MenuType>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['menuTypes'] as _i5.MenuTypesEndpoint).deleteMenuType(
            session,
            params['menuType'],
          ),
        ),
        'updateMenuType': _i1.MethodConnector(
          name: 'updateMenuType',
          params: {
            'menuType': _i1.ParameterDescription(
              name: 'menuType',
              type: _i1.getType<_i12.MenuType>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['menuTypes'] as _i5.MenuTypesEndpoint).updateMenuType(
            session,
            params['menuType'],
          ),
        ),
      },
    );
    connectors['menus'] = _i1.EndpointConnector(
      name: 'menus',
      endpoint: endpoints['menus']!,
      methodConnectors: {
        'addMenu': _i1.MethodConnector(
          name: 'addMenu',
          params: {
            'menu': _i1.ParameterDescription(
              name: 'menu',
              type: _i1.getType<_i13.Menu>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['menus'] as _i6.MenusEndpoint).addMenu(
            session,
            params['menu'],
          ),
        ),
        'deleteMenu': _i1.MethodConnector(
          name: 'deleteMenu',
          params: {
            'menu': _i1.ParameterDescription(
              name: 'menu',
              type: _i1.getType<_i13.Menu>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['menus'] as _i6.MenusEndpoint).deleteMenu(
            session,
            params['menu'],
          ),
        ),
        'getAllMenus': _i1.MethodConnector(
          name: 'getAllMenus',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['menus'] as _i6.MenusEndpoint).getAllMenus(session),
        ),
      },
    );
    connectors['towns'] = _i1.EndpointConnector(
      name: 'towns',
      endpoint: endpoints['towns']!,
      methodConnectors: {
        'getAllTowns': _i1.MethodConnector(
          name: 'getAllTowns',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['towns'] as _i7.TownsEndpoint).getAllTowns(session),
        ),
        'getTownsByDistrict': _i1.MethodConnector(
          name: 'getTownsByDistrict',
          params: {
            'districtId': _i1.ParameterDescription(
              name: 'districtId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['towns'] as _i7.TownsEndpoint).getTownsByDistrict(
            session,
            params['districtId'],
          ),
        ),
        'getTown': _i1.MethodConnector(
          name: 'getTown',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['towns'] as _i7.TownsEndpoint).getTown(
            session,
            params['id'],
          ),
        ),
        'addTown': _i1.MethodConnector(
          name: 'addTown',
          params: {
            'entity': _i1.ParameterDescription(
              name: 'entity',
              type: _i1.getType<_i14.Town>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['towns'] as _i7.TownsEndpoint).addTown(
            session,
            params['entity'],
          ),
        ),
        'deleteTown': _i1.MethodConnector(
          name: 'deleteTown',
          params: {
            'entity': _i1.ParameterDescription(
              name: 'entity',
              type: _i1.getType<_i14.Town>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['towns'] as _i7.TownsEndpoint).deleteTown(
            session,
            params['entity'],
          ),
        ),
        'updateTown': _i1.MethodConnector(
          name: 'updateTown',
          params: {
            'entity': _i1.ParameterDescription(
              name: 'entity',
              type: _i1.getType<_i14.Town>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['towns'] as _i7.TownsEndpoint).updateTown(
            session,
            params['entity'],
          ),
        ),
      },
    );
    connectors['workPlace'] = _i1.EndpointConnector(
      name: 'workPlace',
      endpoint: endpoints['workPlace']!,
      methodConnectors: {
        'workHere': _i1.MethodConnector(
          name: 'workHere',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['workPlace'] as _i8.WorkPlaceEndpoint).workHere(
            session,
            params['name'],
          ),
        )
      },
    );
    modules['serverpod_auth'] = _i15.Endpoints()..initializeEndpoints(server);
  }
}
