import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_effective_architecture/domain/home/home_page.dart';
import 'package:mobx_effective_architecture/stores/main_store.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  static const String name = '/login';

  @override
  Widget build(BuildContext context) {
    final mainStore = GetIt.I.get<MainStore>();

    TextField _textField(
            {String labelText, onChange, String Function() errorText}) =>
        TextField(
          onChanged: onChange,
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: labelText,
              errorText: errorText == null ? '' : errorText()),
        );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Observer(
                builder: (_) => Column(
                  children: <Widget>[
                    _textField(
                      labelText: 'Name',
                      onChange: mainStore.loginStore.setUsername,
                      errorText: mainStore.loginStore.validateUsername,
                    ),
                    const SizedBox(height: 20),
                    _textField(
                      labelText: 'Password',
                      onChange: mainStore.loginStore.setPassword,
                      errorText: mainStore.loginStore.validatePassword,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              Observer(
                builder: (_) => RaisedButton(
                  onPressed: mainStore.loginStore.isValid
                      ? () => Get.toNamed(HomePage.name)
                      : null,
                  child: const Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
