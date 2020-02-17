import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_effective_architecture/app.dart';
import 'package:mobx_effective_architecture/stores/main_store.dart';

void main() {
  debugPrint = (String message, {int wrapWidth}) => debugPrintSynchronously(
        "[${DateTime.now()}]: $message",
        wrapWidth: wrapWidth,
      );

  FlutterError.onError = FlutterError.dumpErrorToConsole;

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
