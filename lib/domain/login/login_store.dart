import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  @observable
  String username;

  @observable
  String password;

  @computed
  bool get isValid => validateUsername() == null && validatePassword() == null;

  @action
  void setUsername(String newValue) {
    username = newValue;
  }

  @action
  void setPassword(String newValue) {
    password = newValue;
  }

  String validateUsername() {
    if (username == null || username.isEmpty) {
      return 'Required';
    }
    return null;
  }

  String validatePassword() {
    if (password == null || password.isEmpty) {
      return 'Required';
    }
    if (password.length < 8) {
      return 'Password must have more than 8 chars';
    }
    return null;
  }
}
