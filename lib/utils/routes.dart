import 'package:flutter/material.dart';
import 'package:mobx_effective_architecture/domain/custom-joke/custom_joke_page.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_page.dart';
import 'package:mobx_effective_architecture/domain/login/login_page.dart';

class Routes {

  static Map<String, Widget Function(BuildContext)> all() => {
    LoginPage.name: (_) => const LoginPage(),
    JokePage.name: (_) => JokePage(),
    CustomJokePage.name: (_) => const CustomJokePage(),
  };
  
}