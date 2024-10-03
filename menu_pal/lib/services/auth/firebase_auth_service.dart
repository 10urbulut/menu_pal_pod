import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:menu_pal/services/auth/authentication_service.dart';

class FirebaseAuthService implements IAuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  Future<UserModel?> signInWithEmailAndPassword(
      String email, String password) async {
    UserCredential? result;

    try {
      result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      debugPrint("login: $e");
    }

    if (result?.user == null) {
      return null;
    }

    debugPrint(result?.user?.uid);

    return UserModel(
      email: result?.user?.email,
      phone: result?.user?.phoneNumber,
    );
  }

  @override
  Future<void> signInWithPhone(String phone) async {
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (PhoneAuthCredential credential) {
        debugPrint(credential.smsCode);
        debugPrint(credential.verificationId);
        debugPrint(credential.accessToken);
      },
      verificationFailed: (FirebaseAuthException e) {
        debugPrint(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        debugPrint(verificationId);
        debugPrint(resendToken.toString());
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        debugPrint(verificationId);
      },
    );
  }

  @override
  Future<bool> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return true;
    } catch (e) {
      debugPrint("Signout: $e");
      return false;
    }
  }

  @override
  Future<UserModel?> signUpWithEmailAndPassword(
      String email, String password) async {
    UserCredential? result;

    try {
      result = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      debugPrint("Register: $e");
    }

    if (result?.user == null) {
      return null;
    }

    return UserModel(
      email: result?.user?.email,
      phone: result?.user?.phoneNumber,
    );
  }

  @override
  Future<UserModel?> isLoggedIn() async {
    var user = _firebaseAuth.currentUser;
    if (user == null) {
      return null;
    }
    return UserModel(
      email: user.email,
      phone: user.phoneNumber,
    );
  }

  @override
  Future<UserModel?> deleteUser() {
    throw UnimplementedError();
  }

  @override
  Future<bool> uploadUserImage(ByteData image) {
    throw UnimplementedError();
  }
}
