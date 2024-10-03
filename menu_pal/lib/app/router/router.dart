import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:menu_pal/views/add_menu/add_menu_view.dart';
import 'package:menu_pal/views/detail_view/detail_view.dart';
import 'package:menu_pal/views/home_view/home_view.dart';
import 'package:menu_pal/views/login/login_view.dart';
import 'package:menu_pal/views/profile/profile_view.dart';
import 'package:menu_pal/views/quick_response/quick_response_view.dart';
import 'package:menu_pal/views/register/register_view.dart';
import 'package:menu_pal/views/web/web_view.dart';

import '../../views/map/map_view.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        MaterialRoute(page: HomeRoute.page),
        MaterialRoute(page: LoginRoute.page, initial: true),
        MaterialRoute(page: DetailRoute.page),
        MaterialRoute(page: ProfileRoute.page),
        MaterialRoute(page: AddMenuRoute.page),
        MaterialRoute(page: RegisterRoute.page),
        MaterialRoute(page: QuickResponseRoute.page),
        MaterialRoute(page: WebRoute.page),
        MaterialRoute(page: MapRoute.page),
      ];
}
