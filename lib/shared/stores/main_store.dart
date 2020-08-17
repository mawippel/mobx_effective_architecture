import 'package:mobx/mobx.dart';
import 'package:mobx_effective_architecture/domain/custom-joke/custom_joke_store.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_store.dart';
import 'package:mobx_effective_architecture/domain/login/login_store.dart';
import 'package:mobx_effective_architecture/shared/stores/auth_store.dart';

part 'main_store.g.dart';

class MainStore = _MainStoreBase with _$MainStore;

abstract class _MainStoreBase with Store {
  final LoginStore loginStore = LoginStore();
  final AuthStore authStore = AuthStore();
  final JokeStore jokeStore = JokeStore();
  final CustomJokeStore customJokeStore = CustomJokeStore();
}
