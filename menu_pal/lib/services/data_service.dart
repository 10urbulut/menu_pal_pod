import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:menu_pal/utils/serverpod_auth_options.dart';
import 'package:menu_pal_client/menu_pal_client.dart';

@lazySingleton
class DataService {
  final Client _client = ServerpodAuthOptions.client;

  Future<List<Menu>?> getAllMenus() async {
    try {
      List<Menu> menus = await _client.menus.getAllMenus();
      return menus;
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  Future<List<RestaurantType>?> getAllRestaurantTypes() async {
    try {
      List<RestaurantType> restaurantTypes =
          await _client.restaurantTypes.getAllRestaurantTypes();
      return restaurantTypes;
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  Future<void> addMenu(Menu menu) async {
    await _client.menus.addMenu(menu);
  }

  Future<void> addMenuType(RestaurantType menuType) async {
    await _client.restaurantTypes.addRestaurantType(menuType);
  }

  Future<void> deleteMenu(Menu menu) async {
    await _client.menus.deleteMenu(menu);
  }

  Future<List<City>> getAllCities() async {
    return await _client.cities.getAllCities();
  }

  Future<List<District>> getDistrictsByCity(int cityId) async {
    return await _client.districts.getDistrictsByCity(cityId);
  }

  Future<List<Town>> getTownsByDistrict(int districtId) async {
    return await _client.towns.getTownsByDistrict(districtId);
  }

  Future<void> workPlaceMethod() async {
    await _client.workPlace.workHere("name");
  }

  Future<bool?> isLoggodIn() async {
    return null;
  }

  Future<void> registerUser() async {}

  Client get client => _client;
}
