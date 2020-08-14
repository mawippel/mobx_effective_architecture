import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key key, this.labelText, this.onChange, this.errorText})
      : super(key: key);

  final String labelText;
  final void Function(String) onChange;
  final String Function() errorText;

  @override
  Widget build(BuildContext context) {
    var x = Get.height;
    return TextField(
      onChanged: onChange,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? '' : errorText(),
      ),
    );
  }
}
