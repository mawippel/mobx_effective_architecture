import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_effective_architecture/stores/main_store.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class JokePage extends StatelessWidget {
  JokePage() {
    mainStore.homeStore.fetchJoke();
  }

  static const String name = '/home';

  final mainStore = GetIt.I.get<MainStore>();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Jokes'),
        ),
        body: Observer(
          builder: (_) => ModalProgressHUD(
            opacity: 0.6,
            color: Colors.black,
            inAsyncCall: mainStore.homeStore.isLoading,
            child: ListView.builder(
              itemCount: mainStore.homeStore.jokes.length,
              itemBuilder: (_, index) {
                final item = mainStore.homeStore.jokes[index];
                return ListTile(
                  title: Text(item.setup),
                  subtitle: Text(item.delivery),
                );
              },
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: mainStore.homeStore.fetchJoke,
          child: Icon(Icons.add),
        ),
      );
}
