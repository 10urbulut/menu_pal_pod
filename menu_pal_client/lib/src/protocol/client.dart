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
import 'package:menu_pal_client/src/protocol/menu_type.dart' as _i3;
import 'package:menu_pal_client/src/protocol/menu.dart' as _i4;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i5;
import 'protocol.dart' as _i6;

/// {@category Endpoint}
class EndpointMenuTypes extends _i1.EndpointRef {
  EndpointMenuTypes(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'menuTypes';

  _i2.Future<List<_i3.MenuType>> getAllMenuTypes() =>
      caller.callServerEndpoint<List<_i3.MenuType>>(
        'menuTypes',
        'getAllMenuTypes',
        {},
      );

  _i2.Future<void> addMenuType(_i3.MenuType menu) =>
      caller.callServerEndpoint<void>(
        'menuTypes',
        'addMenuType',
        {'menu': menu},
      );

  _i2.Future<void> deleteMenuType(_i3.MenuType menu) =>
      caller.callServerEndpoint<void>(
        'menuTypes',
        'deleteMenuType',
        {'menu': menu},
      );
}

/// {@category Endpoint}
class EndpointMenus extends _i1.EndpointRef {
  EndpointMenus(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'menus';

  _i2.Future<void> addMenu(_i4.Menu menu) => caller.callServerEndpoint<void>(
        'menus',
        'addMenu',
        {'menu': menu},
      );

  _i2.Future<void> deleteMenu(_i4.Menu menu) => caller.callServerEndpoint<void>(
        'menus',
        'deleteMenu',
        {'menu': menu},
      );

  _i2.Future<List<_i4.Menu>> getAllMenus() =>
      caller.callServerEndpoint<List<_i4.Menu>>(
        'menus',
        'getAllMenus',
        {},
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
}

class _Modules {
  _Modules(Client client) {
    auth = _i5.Caller(client);
  }

  late final _i5.Caller auth;
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
          _i6.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    menuTypes = EndpointMenuTypes(this);
    menus = EndpointMenus(this);
    workPlace = EndpointWorkPlace(this);
    modules = _Modules(this);
  }

  late final EndpointMenuTypes menuTypes;

  late final EndpointMenus menus;

  late final EndpointWorkPlace workPlace;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'menuTypes': menuTypes,
        'menus': menus,
        'workPlace': workPlace,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
