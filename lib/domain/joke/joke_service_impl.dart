import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_repository.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_service.dart';
import 'package:mobx_effective_architecture/domain/joke/models/joke_model.dart';

class JokeServiceImpl implements JokeService {
  final JokeRepository jokeRepository = GetIt.I.get<JokeRepository>();

  @override
  Future<Joke> fetchJoke() async {
    final Response response = await jokeRepository.fetchJoke();
    return Joke.fromJson(response.data);
  }

  @override
  Future fetchJokeWithError() {
    throw Exception('Some crazy exception ocurred');
  }
}
