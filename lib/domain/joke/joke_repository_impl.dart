import 'package:mobx_effective_architecture/domain/joke/joke_repository.dart';
import 'package:mobx_effective_architecture/shared/mixins/http_client_mixin.dart';

class JokeRepositoryImpl with HttpClientMixin implements JokeRepository {
  @override
  Future fetchJoke() => getClient().get(
        '/joke/Dark',
        queryParameters: {
          'type': 'twopart',
          'blacklistFlags': ['nsfw', 'racist', 'sexist']
        },
      );
}
