import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_effective_architecture/domain/login/login_service.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  final LoginService loginService = GetIt.I.get<LoginService>();

  @observable
  String username;

  @observable
  String password;

  @computed
  bool get isValid => validateUsername == null && validatePassword == null;

  @computed
  String get validateUsername => loginService.validateUsername(username);

  @computed
  String get validatePassword => loginService.validatePassword(password);

  @action
  void setUsername(String newValue) {
    username = newValue;
  }

  @action
  void setPassword(String newValue) {
    password = newValue;
  }
}
