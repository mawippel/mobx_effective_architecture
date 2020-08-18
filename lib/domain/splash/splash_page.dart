import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_effective_architecture/shared/services/hive_service.dart';
import 'package:mobx_effective_architecture/shared/stores/main_store.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key key}) : super(key: key) {
    Future.wait(
      [
        // All the Futures that will be executed while loading
        Future.microtask(init).timeout(const Duration(seconds: 15)),
        Future.delayed(const Duration(seconds: 3)),
      ],
    );
  }

  static const String name = '/splash';
  final MainStore mainStore = GetIt.I.get<MainStore>();
  final HiveService hiveService = GetIt.I.get<HiveService>();

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: Center(
          child: Text('Splash Screen! Loading a bunch of useful data...'),
        ),
      );

  Future init() async {
    mainStore.authStore.isAuthenticated = await hasUserAccess();
  }

  Future<bool> hasUserAccess() async {
    final box = await hiveService.openBox('authBox');
    return hiveService.get(box, 'access_token') != null;
  }
}
