import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_page.dart';
import 'package:mobx_effective_architecture/domain/login/login_page.dart';
import 'package:mobx_effective_architecture/shared/services/hive_service.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key key}) : super(key: key);

  static const String name = '/splash';

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.wait(
      [
        // All the Futures that will be executed while loading
        Future.microtask(init).timeout(const Duration(seconds: 15)),
        Future.delayed(const Duration(seconds: 3)),
      ],
    ).then((_) => finish()); // Runs after the Futures are completed
  }

  void init() {
    if (hasUserAccess()) {
      Get.offNamed(JokePage.name);
    }
  }

  void finish() {
    Get.offNamed(LoginPage.name);
  }

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: Center(
          child: Text('Splash Screen! Loading a bunch of useful data...'),
        ),
      );

  bool hasUserAccess() {
    HiveService.newBox('authBox');
    var xd = HiveService.get('authBox', 'access_token');
    print(xd);
    return HiveService.get('authBox', 'access_token') != null;
  }
}
