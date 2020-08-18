import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_service.dart';
import 'package:mobx_effective_architecture/domain/joke/models/joke_model.dart';
import 'package:mobx_effective_architecture/shared/handlers/dio_error_handler.dart';
import 'package:oktoast/oktoast.dart';

part 'joke_store.g.dart';

class JokeStore = _JokeStoreBase with _$JokeStore;

abstract class _JokeStoreBase with Store {
  final JokeService jokeService = GetIt.I.get<JokeService>();

  @observable
  ObservableList<Joke> jokes = <Joke>[].asObservable();

  @observable
  bool isLoading;

  @action
  void addJoke(Joke joke) {
    jokes.add(joke);
  }

  @action
  Future fetchJoke() async {
    isLoading = true;
    try {
      final joke = await jokeService.fetchJoke();
      jokes.add(joke);
      showToast("The server responded successfully");
    } catch (e) {
      DioErrorHandler.handle(e);
    } finally {
      isLoading = false;
    }
  }

  @action
  Future fetchJokeWithError() async {
    isLoading = true;
    try {
      await jokeService.fetchJokeWithError();
    } catch (e) {
      DioErrorHandler.handle(e);
    } finally {
      isLoading = false;
    }
  }
}
