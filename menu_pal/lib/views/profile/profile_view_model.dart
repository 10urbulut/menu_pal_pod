import 'dart:typed_data';

import 'package:flutter/material.dart' hide ImageProvider;

import 'package:image_provider/image_provider.dart';

import 'package:menu_pal/app/router/router.dart';
import 'package:menu_pal/services/auth/authentication_service.dart';

import '../../app/blueprints/base_viewmodel.dart';

class ProfileViewModel extends BaseViewModel {
  UserModel? get user => authService.user;

  List<ByteData> imageDatas = [];

  @override
  void disposeModel() {}
  @override
  Future<void> getData() async {
    setViewDidLoad(true);
  }

  @override
  Future<void> testScenario() {
    throw UnimplementedError();
  }

  Future<void> logOut() async {
    bool result = await authService.signOut();

    if (result == false) {
      return;
    }
    await appRouter.pushAndPopUntil(const LoginRoute(),
        predicate: (route) => false);
  }

  Future<void> deleteAccountTapped() async {
    await popupService.showInformation(
        "We Take Your Request, We Will Delete Your Account As Soon As Possible");

    //TODO: Delete Account
  }

  Future<void> getImageFromDevice() async {
    List<ImageMetadata> imageMetadataList = [];
    ImageProvider imageProvider = ImageProvider(
      context,
      options: CameraViewOptions(
          imageMetadataList: imageMetadataList,
          galleryPhotoTitleTextStyle: Theme.of(context).textTheme.labelMedium),
      colorScheme: Theme.of(context).colorScheme,
      widget: const RepositoryTypeSelectionWidget(
        title: Text("Pick a Source"),
        cameraOption: Text("Camera"),
        galleryOption: Text("Gallery"),
        backButton: Text("Close"),
      ),
    );

    var result = await imageProvider.getImages(maxImage: 2);
    for (ContentData? e in result?.allImages ?? []) {
      imageDatas.add(ByteData(e!.data!.lengthInBytes));
    }
    uploadImageToServer();
  }

  Future<void> uploadImageToServer() async {
    await authService.uploadProfileImage(imageDatas.first);
    await authService.isLoggedIn();
    user;
    notifyListeners();
  }
}
