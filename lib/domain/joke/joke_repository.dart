import 'package:mobx_effective_architecture/shared/abstract_repository.dart';

class JokeRepository extends AbstractRepository {
  JokeRepository._();

  static JokeRepository _instance;

  static JokeRepository getInstance() {
    if (_instance == null) {
      return _instance = JokeRepository._();
    }
    return _instance;
  }

  Future fetchJoke() => httpClient.client.get(
        '/joke/Dark',
        queryParameters: {'type': 'twopart'},
      );
}
