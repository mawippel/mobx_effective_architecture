import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DioErrorHandler {
  static void handle(e) {
    Get.defaultDialog(
      title: 'Error',
      content: Text('$e'),
      confirm: FlatButton(
        onPressed: Get.back,
        child: const Text('Close'),
      ),
      backgroundColor: Colors.black.withOpacity(0.6),
    );
  }
}
