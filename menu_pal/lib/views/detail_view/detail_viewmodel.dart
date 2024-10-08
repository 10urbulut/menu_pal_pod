import 'package:menu_pal/api/api_response.dart';
import 'package:menu_pal/api/api_route.dart';
import 'package:menu_pal/api/request_options.dart';
import 'package:menu_pal/models/yesorno_model.dart';
import 'package:menu_pal/utils/service_constants.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../app/blueprints/base_viewmodel.dart';

class DetailViewModel extends BaseViewModel {
  YesOrNoModel? yesOrNoModel;
  @override
  void disposeModel() {}

  @override
  Future<void> testScenario() async {}

  @override
  Future<void> getData() async {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      setViewDidLoad(true);
      EasyLoading.showSuccess('It is Detail View!');
    });
  }

  void detailViewTrigger() async {
    final resp = await apiService.request(
        route: APIRoute.get(RequestSettings(path: Endpoints.yesOrNo)),
        create: () => APIResponse<YesOrNoModel>(create: () => YesOrNoModel()));
    yesOrNoModel = resp.response?.data;
    EasyLoading.showSuccess('Detail View Popup Triggered!');
    notifyListeners();
  }

  String convertToEndpoint(String input) {
    // Use a regular expression to split the string into parts
    List<String> parts = input.split(RegExp(r"(?=[A-Z\$\$])"));

    // Join the parts with '/'
    return parts.join('/').toLowerCase();
  }
}
