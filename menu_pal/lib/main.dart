import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:menu_pal/app/locator/locator.dart';
import 'package:flutter/material.dart';
// import 'package:image_provider/image_provider.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:menu_pal/utils/serverpod_auth_options.dart';

import 'firebase_options.dart';

import 'menu_pal_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeThirdParties();

  runApp(const MenuPalApp());
}

Future<void> initializeThirdParties() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // PermissionManager();
  await firebaseMessaggingInitialize();

  await ServerpodAuthOptions.initializeServerpodClient();

  setupLocator();
}

Future<void> firebaseMessaggingInitialize() async {
  final fi = FirebaseMessaging.instance;
  await fi.requestPermission(
    provisional: true,
    alert: true,
    badge: true,
    sound: true,
    announcement: true,
    carPlay: true,
    criticalAlert: true,
  );
  debugPrint(await fi.getToken());

  final apnsToken = await fi.getAPNSToken();
  debugPrint('APNS Token: $apnsToken');

  await fi.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
}
