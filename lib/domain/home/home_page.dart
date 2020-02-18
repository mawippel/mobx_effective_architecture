import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_effective_architecture/stores/main_store.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  static const String name = '/home';

  @override
  Widget build(BuildContext context) {
    final mainStore = GetIt.I.get<MainStore>();
    mainStore.homeStore.fetchJoke();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Jokes'),
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: mainStore.homeStore.jokes.length,
            itemBuilder: (_, index) {
              var item = mainStore.homeStore.jokes[index];
              return ListTile(
                title: Text(item.delivery),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: mainStore.homeStore.fetchJoke,
      ),
    );
  }
}
