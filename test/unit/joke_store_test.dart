import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_service.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_store.dart';
import 'package:mobx_effective_architecture/domain/joke/models/joke_model.dart';
import 'package:mockito/mockito.dart';

class JokeServiceMock extends Mock implements JokeService {}

void main() {
  group('JokeService tests', () {
    Joke getJokeExample() => Joke(
        category: 'some category',
        delivery: 'dfdfas',
        setup: 'dfsdfsa',
        type: '');

    test('should fetch Joke', () async {
      final serviceMock = JokeServiceMock();
      final jokeReturned = getJokeExample();
      when(serviceMock.fetchJoke())
          .thenAnswer((_) => Future.value(jokeReturned));
      GetIt.I.registerLazySingleton<JokeService>(() => serviceMock);
      final jokeStore = JokeStore();

      await jokeStore.fetchJoke();

      jokeStore.jokes.contains(jokeReturned);
    });
  });
}
