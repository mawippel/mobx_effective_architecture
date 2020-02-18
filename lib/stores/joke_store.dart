import 'package:mobx/mobx.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_model.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_service.dart';
import 'package:mobx_effective_architecture/utils/dio_error_handler.dart';
import 'package:oktoast/oktoast.dart';
part 'joke_store.g.dart';

class JokeStore = _JokeStoreBase with _$JokeStore;

abstract class _JokeStoreBase with Store {
  @observable
  ObservableList<Joke> jokes = <Joke>[].asObservable();

  @observable
  bool isLoading;

  @action
  Future fetchJoke() async {
    isLoading = true;
    try {
      final Joke joke = await JokeService.getInstance().fetchJoke();
      jokes.add(joke);
    } catch (e) {
      DioErrorHandler.handle(e);
    } finally {
      isLoading = false;
    }
    showToast("The server responded successfully");
  }

  @action
  Future fetchJokeWithError() async {
    isLoading = true;
    try {
      await JokeService.getInstance().fetchJokeWithError();
    } catch (e) {
      DioErrorHandler.handle(e);
    } finally {
      isLoading = false;
    }
    showToast("The server responded successfully");
  }
}
