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
import '../endpoints/menu_types_endpoint.dart' as _i2;
import '../endpoints/menus_endpoint.dart' as _i3;
import '../endpoints/workplace_endpoint.dart' as _i4;
import 'package:menu_pal_server/src/generated/menu_type.dart' as _i5;
import 'package:menu_pal_server/src/generated/menu.dart' as _i6;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i7;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'menuTypes': _i2.MenuTypesEndpoint()
        ..initialize(
          server,
          'menuTypes',
          null,
        ),
      'menus': _i3.MenusEndpoint()
        ..initialize(
          server,
          'menus',
          null,
        ),
      'workPlace': _i4.WorkPlaceEndpoint()
        ..initialize(
          server,
          'workPlace',
          null,
        ),
    };
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
              (endpoints['menuTypes'] as _i2.MenuTypesEndpoint)
                  .getAllMenuTypes(session),
        ),
        'addMenuType': _i1.MethodConnector(
          name: 'addMenuType',
          params: {
            'menu': _i1.ParameterDescription(
              name: 'menu',
              type: _i1.getType<_i5.MenuType>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['menuTypes'] as _i2.MenuTypesEndpoint).addMenuType(
            session,
            params['menu'],
          ),
        ),
        'deleteMenuType': _i1.MethodConnector(
          name: 'deleteMenuType',
          params: {
            'menu': _i1.ParameterDescription(
              name: 'menu',
              type: _i1.getType<_i5.MenuType>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['menuTypes'] as _i2.MenuTypesEndpoint).deleteMenuType(
            session,
            params['menu'],
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
              type: _i1.getType<_i6.Menu>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['menus'] as _i3.MenusEndpoint).addMenu(
            session,
            params['menu'],
          ),
        ),
        'deleteMenu': _i1.MethodConnector(
          name: 'deleteMenu',
          params: {
            'menu': _i1.ParameterDescription(
              name: 'menu',
              type: _i1.getType<_i6.Menu>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['menus'] as _i3.MenusEndpoint).deleteMenu(
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
              (endpoints['menus'] as _i3.MenusEndpoint).getAllMenus(session),
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
              (endpoints['workPlace'] as _i4.WorkPlaceEndpoint).workHere(
            session,
            params['name'],
          ),
        )
      },
    );
    modules['serverpod_auth'] = _i7.Endpoints()..initializeEndpoints(server);
  }
}
