import 'dart:typed_data';

import 'package:injectable/injectable.dart';

import 'package:menu_pal/services/auth/serverpod_auth_service.dart';

abstract interface class IAuthService {
  Future<UserModel?> signInWithEmailAndPassword(String email, String password);
  Future<void> signInWithPhone(String phone);
  Future<UserModel?> signUpWithEmailAndPassword(String email, String password);
  Future<bool> signOut();
  Future<UserModel?> isLoggedIn();
  Future<UserModel?> deleteUser();
  Future<bool> uploadUserImage(ByteData image);
}

@lazySingleton
class AuthenticationService {
  // final IAuthService _authService = FirebaseAuthService();
  final IAuthService _authService = ServerpodAuthService();
  UserModel? _user;

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    UserModel? user =
        await _authService.signInWithEmailAndPassword(email, password);

    if (user == null) {
      throw Exception('User not found');
    }
    _user = user;
  }

  Future<void> signInWithPhone(String phone) async {
    await _authService.signInWithPhone(phone);
  }

  Future<UserModel?> signInWithEmail(String email, String password) async {
    UserModel? user =
        await _authService.signInWithEmailAndPassword(email, password);
    _user = user;
    return user;
  }

  Future<bool> signOut() async {
    bool result = await _authService.signOut();

    if (result) {
      _user = null;
    }
    return result;
  }

  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    await _authService.signUpWithEmailAndPassword(email, password);
  }

  Future<bool> isLoggedIn() async {
    UserModel? user = await _authService.isLoggedIn();

    if (user == null) {
      return false;
    }
    _user = user;
    return true;
  }

  Future<bool> uploadProfileImage(ByteData data) async {
    return await _authService.uploadUserImage(data);
  }

  UserModel? get user => _user;
}

class UserModel {
  final String? email;
  final String? phone;
  final String? imageLink;

  UserModel({
    this.email,
    this.phone,
    this.imageLink,
  });
}
