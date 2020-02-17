import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobx_effective_architecture/domain/home/home_page.dart';
import 'package:mobx_effective_architecture/utils/routes.dart';
import 'package:oktoast/oktoast.dart';

class App extends StatelessWidget {
  static FirebaseAnalytics analytics = FirebaseAnalytics();

  @override
  Widget build(BuildContext context) {

    return OKToast(
      position: ToastPosition.bottom,
      handleTouth: true,
      dismissOtherOnShow: true,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/login',
        home: const HomePage(),
        navigatorKey: Get.key,
        navigatorObservers: [FirebaseAnalyticsObserver(analytics: analytics)],
        routes: Routes.all(),
      ),
    );
  }
}
