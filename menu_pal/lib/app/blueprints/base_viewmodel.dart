import 'package:auto_route/auto_route.dart';
// ignore: depend_on_referenced_packages
import 'package:dialog_service/dialog_service.dart';
import 'package:flutter/material.dart';
import 'package:menu_pal/services/auth/authentication_service.dart';
import 'package:menu_pal/services/data_service.dart';

import '../../services/api_service.dart';
import '../../services/popup_service.dart';
import '../../services/scaffold_messenger_services.dart';
import '../app_config.dart';
import '../locator/locator.dart';
import 'api_response.dart';

abstract class BaseViewModel extends ChangeNotifier {
  //Api Service instance
  @protected
  final apiService = locator<ApiService>();

  //Dialog Service instance
  @protected
  final dialogService = DialogService();

  //Popup Service instance
  @protected
  final popupService = locator<PopupService>();

  //Scaffold Messenger instance
  @protected
  final messengerService = locator<ScaffoldMessengerService>();

  // Authentication Service
  @protected
  final authService = locator<AuthenticationService>();

  // Data Service
  @protected
  final dataService = locator<DataService>();

  //Context getter
  BuildContext get context => AppConfig.appRouter.navigatorKey.currentContext!;

  final appRouter = AppConfig.appRouter;

  RouteData get currentRoute => appRouter.current;

  /// This can be used as a init loading status
  /// Upon showing the view the loading indicator is shown until the api request is complete
  /// After that this can be set to true and the content is shown
  @protected
  bool _viewDidLoad = false;

  bool get viewDidLoad => _viewDidLoad;

  /// This can be used to set the viewLoading status
  @protected
  void setViewDidLoad(bool value) {
    if (value != _viewDidLoad) {
      _viewDidLoad = value;
      notifyListeners();
    }
  }

  @protected
  final bool _loading = false;

  bool get loading => _loading;

  //This can be used to set the loading status
  @protected
  void setLoading(bool value) {
    // if (value != _loading) {
    //   _loading = value;
    //   notifyListeners();
    // }

    if (value == true) {
      popupService.showLoading();
    }

    if (value == false) {
      popupService.closeLoading();
    }
  }

  @protected
  ResponseStatus _responseStatus = ResponseStatus();

  ResponseStatus get responseStatus => _responseStatus;

  //This can be used to set the Response Status
  @protected
  void setResponseStatus(ResponseStatus value,
      {required Function? latestRequest}) async {
    if (value != _responseStatus) {
      _responseStatus = value;
      notifyListeners();
    }
  }

  /// This can be used to fetch ApiResponseModel
  @protected
  Future<void> getData();

  /// This can be used to dispose
  @protected
  void disposeModel();

  /// This can be used to test the view/viewmodel scenarios
  @protected
  Future<void> testScenario();
}
