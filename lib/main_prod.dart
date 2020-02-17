import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_effective_architecture/app.dart';
import 'package:mobx_effective_architecture/stores/main_store.dart';

void main() {
  debugPrint = (String message, {int wrapWidth}) {};

  FlutterError.onError = Crashlytics.instance.recordFlutterError;

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  // register the Main Store
  final GetIt getIt = GetIt.I;
  getIt.registerSingleton<MainStore>(MainStore());

  runApp(
    App(),
  );
}
