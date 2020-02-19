import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_model.dart';
import 'package:mobx_effective_architecture/stores/main_store.dart';

class CustomJokePage extends StatelessWidget {
  const CustomJokePage({Key key}) : super(key: key);

  static const String name = '/custom-joke';

  @override
  Widget build(BuildContext context) {
    final mainStore = GetIt.I.get<MainStore>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insert Joke'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                onChanged: (value) => mainStore.customJokeStore.text = value,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Joke',
                ),
              ),
              Observer(
                builder: (_) {
                  return RaisedButton(
                    onPressed: () {
                      mainStore.jokeStore.addJoke(
                        Joke(
                          setup: 'Inserted by the user',
                          delivery: mainStore.customJokeStore.text,
                        ),
                      );
                      Get.back();
                    },
                    child: const Text('Insert'),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
