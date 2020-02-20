import 'package:mobx_effective_architecture/shared/repositories/abstract_repository.dart';

class JokeRepository extends AbstractRepository {
  factory JokeRepository() {
    return _singleton;
  }
  JokeRepository._internal();

  static final JokeRepository _singleton = JokeRepository._internal();

  Future fetchJoke() => httpClient.get(
        '/joke/Dark',
        queryParameters: {
          'type': 'twopart',
          'blacklistFlags': [
            'nsfw',
            'racist',
            'sexist'
          ]
        },
      );
}
