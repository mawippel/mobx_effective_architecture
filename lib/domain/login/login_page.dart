import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_effective_architecture/components/custom_text_field.dart';
import 'package:mobx_effective_architecture/shared/stores/main_store.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  static const String name = '/login';

  @override
  Widget build(BuildContext context) {
    final mainStore = GetIt.I.get<MainStore>();

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
              Column(
                children: <Widget>[
                  CustomTextField(
                    labelText: 'Name',
                    onChange: mainStore.loginStore.setUsername,
                    errorText: mainStore.loginStore.validateUsername,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    labelText: 'Password',
                    onChange: mainStore.loginStore.setPassword,
                    errorText: mainStore.loginStore.validatePassword,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
              Observer(
                builder: (_) => RaisedButton(
                  onPressed: mainStore.loginStore.isValid
                      ? () => mainStore.authStore.isAuthenticated = true
                      : null,
                  child: const Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
