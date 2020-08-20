import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_service.dart';
import 'package:mobx_effective_architecture/shared/stores/loading_store.dart';
import 'package:mobx_effective_architecture/domain/joke/models/joke_model.dart';
import 'package:mobx_effective_architecture/shared/handlers/dio_error_handler.dart';

part 'joke_store.g.dart';

class JokeStore = _JokeStoreBase with _$JokeStore;

abstract class _JokeStoreBase extends LoadingStore with Store {
  final JokeService jokeService = GetIt.I.get<JokeService>();

  @observable
  ObservableList<Joke> jokes = <Joke>[].asObservable();

  @action
  void addJoke(Joke joke) {
    jokes.add(joke);
  }

  @action
  Future fetchJoke() async {
    final joke = await loadingWrapper.wrapAsyncCall(jokeService.fetchJoke);
    jokes.add(joke);
  }

  @action
  Future fetchJokeWithError() async {
    try {
      await loadingWrapper.wrapAsyncCall(jokeService.fetchJokeWithError);
    } catch (e) {
      DioErrorHandler.handle(e);
    }
  }
}
