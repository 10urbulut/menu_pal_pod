import 'package:menu_pal/app/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:menu_pal/models/menu/menu_model.dart';

import 'package:menu_pal_client/menu_pal_client.dart';

import '../../app/blueprints/base_viewmodel.dart';

class HomeViewModel extends BaseViewModel {
  List<MenuModel> menus = [];
  List<MenuModel> filteredMenus = [];
  String? get currentUserMail => authService.user?.email;
  @override
  void disposeModel() {}

  @override
  Future<void> testScenario() async {}

  @override
  Future<void> getData() async {
    await getMenus();

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      setViewDidLoad(true);
    });
  }

  void search(String value) {
    filteredMenus = menus
        .where((element) =>
            (element.title ?? "").toLowerCase().contains(value.toLowerCase()))
        .toList();

    notifyListeners();
  }

  Future<void> pushToDetailView() async {
    await appRouter.push(const DetailRoute());
    debugPrint('Returned from Detail View');
  }

  Future<void> pushToAddMenuView() async {
    await appRouter.push(const AddMenuRoute());
    await getMenus();
    debugPrint('Returned from AddMenu View');
  }

  Future<void> pushToProfileView() async {
    await appRouter.push(const ProfileRoute());
  }

  Future<void> pushToWebView(String? value) async {
    if (value == null) {
      return;
    }
    await appRouter.push(WebRoute(link: value));
  }

  Future<void> getMenus() async {
    var data = await dataService.getAllMenus();
    menus.clear();
    data?.map(
      (e) {
        menus.add(
          MenuModel(
            createdAt: e.createdAt,
            createdBy: e.createdBy,
            id: e.id,
            description: e.description,
            link: e.link,
            thumbnail: e.thumbnail,
            title: e.brand,
            // type: e.,
          ),
        );
      },
    ).toList();

    filteredMenus = List.from(menus);
    notifyListeners();
  }

  Future<void> deleteButtonTapped(MenuModel menu) async {
    await deleteMenu(menu);
  }

  Future<void> deleteMenu(MenuModel menu) async {
    await dataService.deleteMenu(Menu(
        id: menu.id,
        description: menu.description,
        link: menu.link,
        thumbnail: menu.thumbnail,
        title: menu.title,
        deletedAt: DateTime.now(),
        deletedBy: currentUserMail

        // type: menu.type,
        ));
    await getMenus();
  }

  bool deleteButtonRules(MenuModel item) {
    if (item.createdAt == null) {
      return false;
    }

    if (currentUserMail == null) {
      return false;
    }

    return item.createdBy == currentUserMail &&
        item.createdAt!
            .isAfter(DateTime.now().subtract(const Duration(days: 10)));
  }

  Future<void> workPlaceMethod() async {
    await dataService.workPlaceMethod();
  }
}
