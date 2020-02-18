import 'package:mobx/mobx.dart';
import 'package:mobx_effective_architecture/domain/home/joke_model.dart';
import 'package:mobx_effective_architecture/domain/home/joke_service.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  ObservableList<Joke> jokes = <Joke>[].asObservable();

  @observable
  bool isLoading;

  @action
  fetchJoke() async {
    isLoading = true;
    try {
      final Joke joke = await JokeService.getInstance().fetchJoke();
      jokes.add(joke);
    } catch (e) {
      print(e);
      // add a default error handler
    } finally {
      isLoading = false;
    }
  }
}
