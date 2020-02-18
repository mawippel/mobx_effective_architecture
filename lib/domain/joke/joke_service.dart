import 'package:dio/dio.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_model.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_repository.dart';

class JokeService {
  JokeService._() {}

  static JokeService _instance;

  static JokeService getInstance() {
    if (_instance == null) {
      return _instance = JokeService._();
    }
    return _instance;
  }

  Future fetchJoke() async {
    final Response response = await JokeRepository.getInstance().fetchJoke();
    return Joke.fromJson(response.data);
  }

  Future fetchJokeWithError() {
    throw Exception('Some crazy exception ocurred');
  }
}
