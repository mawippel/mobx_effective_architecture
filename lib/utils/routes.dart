import 'package:flutter/material.dart';
import 'package:mobx_effective_architecture/domain/home/home_page.dart';

class Routes {

  static Map<String, Widget Function(BuildContext)> all() => {
    HomePage.name: (_) => const HomePage(),
  };
  
}