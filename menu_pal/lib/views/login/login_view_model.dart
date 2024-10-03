import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:menu_pal/app/router/router.dart';
import 'package:menu_pal/services/auth/authentication_service.dart';

import '../../app/blueprints/base_viewmodel.dart';

class LoginViewModel extends BaseViewModel {
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void disposeModel() {}
  @override
  Future<void> getData() async {
    if (kDebugMode) {
      emailController.text = "10urbulut@gmail.com";
      passwordController.text = "111111";
    }

    await isLoggedIn();
    setViewDidLoad(true);
  }

  @override
  Future<void> testScenario() {
    throw UnimplementedError();
  }

  Future<void> pushToRegisterView() async {
    await appRouter.push(const RegisterRoute());
  }

  Future<void> pushToHomeView() async {
    await appRouter.pushAndPopUntil(const HomeRoute(),
        predicate: (route) => false);
  }

  Future<void> phoneLoginButtonTapped() async {
    await authService.signInWithPhone(phoneController.text);
  }

  Future<void> emailLoginButtonTapped() async {
    UserModel? user = await authService.signInWithEmail(
        emailController.text, passwordController.text);

    if (user == null) {
      await authService.signUpWithEmailAndPassword(
          emailController.text, passwordController.text);
    }

    if (user == null) {
      return;
    }

    await pushToHomeView();
  }

  Future<void> isLoggedIn() async {
    bool result = await authService.isLoggedIn();

    if (result == true) {
      await pushToHomeView();
    }
  }

  get authCaller => dataService.client.modules.auth;

  Future<void> onSignedIn() async {
    await authService.isLoggedIn();
    await popupService.showSuccess();
    await pushToHomeView();
  }
}
