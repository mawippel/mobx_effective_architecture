import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:mobx_effective_architecture/app.dart';

void main() {
  debugPrint = (String message, {int wrapWidth}) {};

  FlutterError.onError = Crashlytics.instance.recordFlutterError;

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  initializeDateFormatting("pt_BR", null);

  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    App(),
  );
}
