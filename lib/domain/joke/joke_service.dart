import 'package:dio/dio.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_repository.dart';
import 'package:mobx_effective_architecture/domain/joke/models/joke_model.dart';

class JokeService {
  static Future fetchJoke() async {
    final Response response = await JokeRepository().fetchJoke();
    return Joke.fromJson(response.data);
  }

  static Future fetchJokeWithError() {
    throw Exception('Some crazy exception ocurred');
  }
}
