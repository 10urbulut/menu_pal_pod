import 'package:flutter/material.dart';
import 'package:menu_pal/views/web/web_view_model.dart';
import 'package:provider/provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../app/blueprints/base_page_view.dart';

@RoutePage()
class WebView extends StatelessWidget {
  final String link;
  const WebView({super.key, required this.link});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WebViewModel(link),
      builder: (context, _) {
        return BasePageView<WebViewModel>(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: context.read<WebViewModel>().closeTapped,
            ),
            title: const Text('MenuPal Presents'),
          ),
          content: const _ViewContent(),
        );
      },
    );
  }
}

class _ViewContent extends StatelessWidget {
  const _ViewContent();
  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: context.read<WebViewModel>().webViewController,
    );
  }
}
