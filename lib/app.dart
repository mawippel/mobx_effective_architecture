import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_repository.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_repository_impl.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_service.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_service_impl.dart';
import 'package:mobx_effective_architecture/shared/providers/http_client.dart';
import 'package:mobx_effective_architecture/shared/stores/main_store.dart';
import 'package:mobx_effective_architecture/utils/routes.dart';
import 'package:oktoast/oktoast.dart';

class App extends StatelessWidget {
  App() {
    final getIt = GetIt.I;
    registerDependencies(getIt);
  }

  static FirebaseAnalytics analytics = FirebaseAnalytics();

  @override
  Widget build(BuildContext context) => OKToast(
        position: ToastPosition.bottom,
        handleTouth: true,
        dismissOtherOnShow: true,
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/splash',
          navigatorKey: Get.key,
          navigatorObservers: [FirebaseAnalyticsObserver(analytics: analytics)],
          routes: Routes.all(),
        ),
      );

  void registerDependencies(GetIt instance) {
    instance.registerLazySingleton<JokeService>(() => JokeServiceImpl());
    instance.registerLazySingleton<JokeRepository>(() => JokeRepositoryImpl());

    instance.registerSingleton<MainStore>(MainStore());
    instance.registerSingleton<HttpClient>(
        HttpClient(Dio(), DotEnv().env['BASE_URL']));
  }
}
