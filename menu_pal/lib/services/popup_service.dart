// ignore: depend_on_referenced_packages
import 'package:dialog_service/dialog_service.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:injectable/injectable.dart';

import '../app/app_config.dart';
import '../app/app_defaults.dart';
import '../app/strings/asset_strings.dart';

@lazySingleton
class PopupService {
  @protected
  final _dialogService = DialogService();
  final BuildContext _context = AppConfig.context;

  Future<void> showOK(String status) async {
    EasyLoading.showSuccess(status);
  }

  Future<void> showLoading({String? status}) async {
    await EasyLoading.show(status: status, maskType: EasyLoadingMaskType.clear);
  }

  Future<void> closeLoading({String? status}) async {
    await EasyLoading.dismiss();
  }

  Future<void> showNoWay(String status) async {
    EasyLoading.showError(status);
  }

  Future<void> showInformation(String status) async {
    EasyLoading.showInfo(status, dismissOnTap: true);
  }

  Future<void> showSuccess() async {
    _dialogService.showAnimatedPullBottomSheet(
      _context,
      minHeightApp: AppDefaults.bottomSheetAnimationHeigt,
      child: const _PopUpWidget(
          animation: "Untitled", animationPath: AssetStrings.successCheckFlr),
    );

    await _animationWaiter();
  }

  Future<void> showFailed() async {
    _dialogService.showAnimatedPullBottomSheet(_context,
        minHeightApp: AppDefaults.bottomSheetAnimationHeigt,
        child: const _PopUpWidget(
            animation: "failed", animationPath: AssetStrings.failedFlr));

    await _animationWaiter();
  }

  Future<void> showWarning() async {
    _dialogService.showAnimatedPullBottomSheet(_context,
        minHeightApp: AppDefaults.bottomSheetAnimationHeigt,
        child: const _PopUpWidget(
            animation: "play", animationPath: AssetStrings.warningFlr));
    await _animationWaiter();
  }

  Future<void> _animationWaiter() async {
    await Future.delayed(const Duration(milliseconds: 1800))
        .whenComplete(() => _dialogService.dismissOverlay());
  }
}

class _PopUpWidget extends StatelessWidget {
  const _PopUpWidget({
    required this.animation,
    required this.animationPath,
  });
  final String animation;
  final String animationPath;
  final double _maxHeight = 400;
  final double _maxWidth = 500;
  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxWidth: _maxWidth,
      maxHeight: _maxHeight,
      child: FlareActor(
        animationPath,
        alignment: Alignment.center,
        fit: BoxFit.fitWidth,
        animation: animation,
        isPaused: false,
      ),
    );
  }
}
