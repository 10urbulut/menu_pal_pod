// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../services/api_service.dart' as _i340;
import '../../services/auth/authentication_service.dart' as _i736;
import '../../services/data_service.dart' as _i329;
import '../../services/location_service.dart' as _i537;
import '../../services/popup_service.dart' as _i569;
import '../../services/scaffold_messenger_services.dart' as _i164;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i537.LocationService>(() => _i537.LocationService());
  gh.lazySingleton<_i736.AuthenticationService>(
      () => _i736.AuthenticationService());
  gh.lazySingleton<_i569.PopupService>(() => _i569.PopupService());
  gh.lazySingleton<_i164.ScaffoldMessengerService>(
      () => _i164.ScaffoldMessengerService());
  gh.lazySingleton<_i340.ApiService>(() => _i340.ApiService());
  gh.lazySingleton<_i329.DataService>(() => _i329.DataService());
  return getIt;
}
