import 'package:flutter/material.dart';

class CustomJokePage extends StatelessWidget {
  const CustomJokePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String joke = '';
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
              TextField(
                onChanged: (value) {
                  joke = value;
                },
                decoration: const InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Piada',
                ),
              ),
              RaisedButton(
                onPressed: mainStore.loginStore.isValid
                    ? () {
                        mainStore.authStore.isAuthenticated = true;
                      }
                    : null,
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
