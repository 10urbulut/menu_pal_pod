import 'dart:typed_data';

import 'package:menu_pal/services/auth/authentication_service.dart';
import 'package:menu_pal/services/data_service.dart';
import 'package:menu_pal/utils/serverpod_auth_options.dart';

class ServerpodAuthService implements IAuthService {
  final _sessionManager = ServerpodAuthOptions.sessionManager;

  @override
  Future<UserModel?> isLoggedIn() async {
    if (_sessionManager.isSignedIn == false) {
      return null;
    }

    return UserModel(
      email: _sessionManager.signedInUser?.email,
      imageLink: _sessionManager.signedInUser?.imageUrl,
    );
  }

  @override
  Future<UserModel?> signInWithEmailAndPassword(String email, String password) {
    throw UnimplementedError();
  }

  @override
  Future<void> signInWithPhone(String phone) {
    throw UnimplementedError();
  }

  @override
  Future<bool> signOut() async {
    return await _sessionManager.signOut();
  }

  @override
  Future<UserModel?> signUpWithEmailAndPassword(String email, String password) {
    throw UnimplementedError();
  }

  @override
  Future<UserModel?> deleteUser() async {
    DataService().client.modules.auth.user;
    return null;
  }

  @override
  Future<bool> uploadUserImage(ByteData image) async {
    // return await _sessionManager.uploadUserImage(image);
    return false;
  }
}
