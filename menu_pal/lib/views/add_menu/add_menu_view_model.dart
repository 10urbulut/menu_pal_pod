import 'package:flutter/material.dart';

import 'package:menu_pal/app/app_objects.dart';
import 'package:menu_pal/app/router/router.dart';
import 'package:menu_pal/services/location_service.dart';
import 'package:menu_pal_client/menu_pal_client.dart';

import '../../app/blueprints/base_viewmodel.dart';

class AddMenuViewModel extends BaseViewModel {
  LocationService locationService = LocationService();
  final qrTextFieldController = TextEditingController();
  final nameTextFieldController = TextEditingController();
  final starTextFieldController = TextEditingController();
  final descriptionTextFieldController = TextEditingController();
  final locationTextFieldController = TextEditingController();
  final streetTextFieldController = TextEditingController();

  List<RestaurantType> _restaurantTypes = [];
  List<RestaurantType> _selectedRestaurantTypes = [];
  List<City> _cities = [];
  List<District> _districts = [];
  List<Town> _towns = [];

  int? selectedCityId;
  int? selectedDistrictId;
  int? selectedTownId;

  @override
  void disposeModel() {}

  @override
  Future<void> getData() async {
    await getRestaurantTypes();
    await getAllCities();
    setViewDidLoad(true);
  }

  @override
  Future<void> testScenario() async {
    debugPrint('AddMenuViewModel.testScenario');
  }

  Future<void> openCamera() async {
    var result = await appRouter.push(const QuickResponseRoute());

    if (result == null) {
      return;
    }

    qrTextFieldController.clear();
    qrTextFieldController.text = result.toString();
  }

  Future<void> saveOnTapped() async {
    setLoading(true);
    await addMenu().whenComplete(() => setLoading(false));
  }

  Future<void> addMenu() async {
    if (addMenuRules() == false) {
      return;
    }

    await dataService.addMenu(setMenuForSaving());
    await appRouter.maybePop();
  }

  Menu setMenuForSaving() {
    return Menu(
      createdBy: authService.user?.email,
      brand: nameTextFieldController.text,
      link: qrTextFieldController.text,
      description: descriptionTextFieldController.text,
      addresses: [
        Address(
          street: streetTextFieldController.text,
          latitude: double.tryParse(
              locationTextFieldController.text.split(',').first),
          longitude:
              double.tryParse(locationTextFieldController.text.split(',').last),
          city: selectedCityId,
          district: selectedDistrictId,
          town: selectedTownId,
        ),
      ],
      restaurantTypeIds: selectedRestaurantTypes.map((e) => e.id!).toList(),
    );
  }

  Future<void> locationTextFieldTapped() async {
    // await appRouter.push(const MapRoute());
    Location? location = await locationService.getCurrentLocation();
    if (location == null) {
      return;
    }
    locationTextFieldController.text =
        '${location.latitude}, ${location.longitude}';
  }

  Future<void> getRestaurantTypes() async {
    var data = await dataService.getAllRestaurantTypes();

    data?.map((e) => _restaurantTypes.add(e)).toList();

    _restaurantTypes = data ?? [];
    notifyListeners();
  }

  Future<void> getAllCities() async {
    var data = await dataService.getAllCities();
    data.map((e) => cities.add(e)).toList();

    _cities = data;

    _districts.clear();
    _towns.clear();

    notifyListeners();
  }

  Future<void> getDistrictsByCity(int cityId) async {
    var data = await dataService.getDistrictsByCity(cityId);
    data.map((e) => districts.add(e)).toList();

    _districts = data;
    _towns.clear();
    notifyListeners();
  }

  Future<void> getTownsByDistrict(int districtId) async {
    var data = await dataService.getTownsByDistrict(districtId);
    data.map((e) => towns.add(e)).toList();

    _towns = data;
    notifyListeners();
  }

  Future<void> cityOnChanged(dynamic value) async {
    if (value is City) {
      selectedCityId = value.id;
      _districts.clear();
      notifyListeners();
      await getDistrictsByCity(value.id as int);
    }
  }

  Future<void> districtOnChanged(dynamic value) async {
    if (value is District) {
      selectedDistrictId = value.id;
      await getTownsByDistrict(value.id as int);
    }
  }

  Future<void> townOnChanged(dynamic value) async {
    if (value is Town) {
      selectedTownId = value.id;
    }
  }

  List<RestaurantType> get restaurantTypes => _restaurantTypes.toList();
  List<RestaurantType> get selectedRestaurantTypes =>
      _selectedRestaurantTypes.toList();
  List<City> get cities => _cities.toList();
  List<District> get districts => _districts.toList();
  List<Town> get towns => _towns.toList();

  void restaurantTypesOnChanged(dynamic value) {
    if (value is List<RestaurantType>) {
      _selectedRestaurantTypes = value;
      notifyListeners();
    }
  }

  bool addMenuRules() {
    if (nameTextFieldController.text.isEmpty) {
      popupService.showNoWay("Name cannot be empty");
      return false;
    }

    if (qrTextFieldController.text.isEmpty) {
      popupService.showNoWay("QR Code cannot be empty");
      return false;
    }

    if (descriptionTextFieldController.text.isEmpty) {
      // return false;
    }

    if (locationTextFieldController.text.isEmpty) {
      // return false;
    }

    if (streetTextFieldController.text.isEmpty) {
      debugPrint('Street is empty');
      return false;
    }

    if (selectedCityId == null) {
      debugPrint('City is empty');
      return false;
    }

    if (selectedDistrictId == null) {
      debugPrint('District is empty');
      return false;
    }

    if (selectedTownId == null) {
      debugPrint('Town is empty');
      return false;
    }

    if (restaurantTypes.isEmpty) {
      debugPrint('Type is empty');
      return false;
    }

    return true;
  }
}
