import 'package:get_it/get_it.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_repository.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_service_impl.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class JokeRepositoryMock extends Mock implements JokeRepository {}

void main() {
  group('JokeService tests', () {
    test('fetchJokeWithError should throw exception', () async {
      // arrange
      GetIt.I.registerSingleton<JokeRepository>(JokeRepositoryMock());
      final service = JokeServiceImpl();

      // assert
      expect(service.fetchJokeWithError, throwsA(isA<Exception>()));

      GetIt.I.reset();
    });

    test('fetchJoke should return a Joke', () async {
      // arrange
      final jokeRepoMock = JokeRepositoryMock();
      //when(jokeRepoMock., effect);
      GetIt.I.registerSingleton<JokeRepository>(jokeRepoMock);

      final service = JokeServiceImpl();

      // assert
      expect(service.fetchJokeWithError, throwsA(isA<Exception>()));

      GetIt.I.reset();
    });
  });
}
