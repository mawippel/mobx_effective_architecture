import 'package:mobx_effective_architecture/shared/abstract_repository.dart';

class JokeRepository extends AbstractRepository {
  factory JokeRepository() {
    return _singleton;
  }
  JokeRepository._internal();

  static final JokeRepository _singleton = JokeRepository._internal();

  Future fetchJoke() => httpClient.client.get(
        '/joke/Dark',
        queryParameters: {'type': 'twopart'},
      );
}
