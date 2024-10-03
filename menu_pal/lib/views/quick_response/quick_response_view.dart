import 'package:flutter/material.dart';
import 'package:menu_pal/views/quick_response/quick_response_view_model.dart';
import 'package:provider/provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../../app/blueprints/base_page_view.dart';

@RoutePage()
class QuickResponseView extends StatelessWidget {
  const QuickResponseView({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => QuickResponseViewModel(),
      builder: (context, _) {
        return BasePageView<QuickResponseViewModel>(
          appBar: AppBar(
            title: const Text('Quick Response'),
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
    return QRView(
      formatsAllowed: const [BarcodeFormat.qrcode],
      key: context.read<QuickResponseViewModel>().qrKey,
      cameraFacing: CameraFacing.back,
      overlay: QrScannerOverlayShape(
        borderColor: Colors.red,
        borderRadius: 10,
        borderLength: 30,
        borderWidth: 10,
      ),
      onQRViewCreated: context.read<QuickResponseViewModel>().onQRViewCreated,
    );
  }
}
