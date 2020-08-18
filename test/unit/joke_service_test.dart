import 'package:get_it/get_it.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_repository.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_repository_impl.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_service_impl.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class JokeRepositoryMock extends Mock implements JokeRepository {}

void main() {
  test('should throw exception', () async {
    GetIt.I.registerSingleton<JokeRepository>(JokeRepositoryImpl());

    // arrange
    final service = JokeServiceImpl();

    // assert
    expect(await service.fetchJokeWithError(), "XD");
  });
}
