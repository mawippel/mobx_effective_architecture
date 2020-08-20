import 'models/joke_model.dart';

abstract class JokeService {
  Future<Joke> fetchJoke();
  Future fetchJokeWithError();
}
