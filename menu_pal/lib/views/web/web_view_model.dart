import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../app/blueprints/base_viewmodel.dart';

class WebViewModel extends BaseViewModel {
  WebViewModel(this.link);

  final String link;

  late WebViewController webViewController;

  @override
  void disposeModel() {}
  @override
  Future<void> getData() async {
    createController();
    setViewDidLoad(true);
  }

  @override
  Future<void> testScenario() {
    throw UnimplementedError();
  }

  Future<void> createController() async {
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
        ),
      );
    try {
      await webViewController.loadRequest(Uri.parse(link));
    } catch (e) {
      debugPrint('Error loading webview: $e');
      await appRouter.maybePop();
      popupService.showInformation("Sorry, we couldn't load the page.");
    }
  }

  Future<void> closeTapped() async {
    await appRouter.maybePop();
  }
}
