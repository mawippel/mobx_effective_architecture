import 'package:mobx_effective_architecture/domain/login/login_service.dart';

class LoginServiceImpl implements LoginService {
  @override
  String validateUsername(String username) {
    if (username == null || username.isEmpty) {
      return 'Required';
    }
    return null;
  }

  @override
  String validatePassword(String password) {
    if (password == null || password.isEmpty) {
      return 'Required';
    }
    if (password.length < 8) {
      return 'Password must have more than 8 chars';
    }
    return null;
  }
}
