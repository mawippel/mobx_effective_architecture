import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DioErrorHandler {
  static void handle(e) {
    Get.defaultDialog(
      title: 'Error',
      content: Text('$e'),
      confirm: const FlatButton(
        onPressed: Get.back,
        child: Text('Close'),
      ),
      color: Colors.black.withOpacity(0.6),
    );
  }
}
