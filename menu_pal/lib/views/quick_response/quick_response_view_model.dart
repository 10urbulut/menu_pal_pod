import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../app/blueprints/base_viewmodel.dart';
import '../../app/app_defaults.dart';

class QuickResponseViewModel extends BaseViewModel {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  void disposeModel() {
    controller?.dispose();
  }

  @override
  Future<void> getData() async {
    await Future.delayed(AppDefaults.kStandartDuration);
    setViewDidLoad(true);
  }

  @override
  Future<void> testScenario() async {
    throw UnimplementedError();
  }

  Future<void> onQRViewCreated(QRViewController controller) async {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) async {
      debugPrint('QRCode: ${scanData.code}');
      debugPrint('Format: ${scanData.format}');
      await controller.pauseCamera();
      await appRouter.maybePop(scanData.code);
    });
  }
}
