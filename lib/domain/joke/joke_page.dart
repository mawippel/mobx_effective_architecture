import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_effective_architecture/domain/custom-joke/custom_joke_page.dart';
import 'package:mobx_effective_architecture/shared/handlers/dio_error_handler.dart';
import 'package:mobx_effective_architecture/shared/stores/main_store.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:oktoast/oktoast.dart';

class JokePage extends StatelessWidget {
  JokePage() {
    mainStore.jokeStore.fetchJoke();
  }

  static const String name = '/home';

  final MainStore mainStore = GetIt.I.get<MainStore>();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Jokes'),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Get.toNamed(CustomJokePage.name),
              child: const Text('Add Custom Joke'),
            ),
            FlatButton(
              onPressed: mainStore.jokeStore.fetchJokeWithError,
              child: const Text('ERROR'),
            ),
          ],
        ),
        body: Observer(
          builder: (_) => ModalProgressHUD(
            opacity: 0.6,
            color: Colors.black,
            inAsyncCall: mainStore.jokeStore.isLoading,
            child: ListView.builder(
              itemCount: mainStore.jokeStore.jokes.length,
              itemBuilder: (_, index) {
                final item = mainStore.jokeStore.jokes[index];
                return ListTile(
                  title: Text(item.setup),
                  subtitle: Text(item.delivery),
                );
              },
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: handleAddButton,
          child: const Icon(Icons.add),
        ),
      );

  Future handleAddButton() async {
    try {
      await mainStore.jokeStore.fetchJoke();
      showToast("The server responded successfully");
    } catch (e) {
      DioErrorHandler.handle(e);
    }
  }
}
