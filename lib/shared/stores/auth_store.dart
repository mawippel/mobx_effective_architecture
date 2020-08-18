import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_page.dart';
import 'package:mobx_effective_architecture/domain/login/login_page.dart';
import 'package:mobx_effective_architecture/shared/services/auth_service.dart';
part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  _AuthStoreBase() {
    reaction<bool>(
      (_) => isAuthenticated,
      (isAuthenticated) async {
        if (isAuthenticated) {
          await authService.saveNewToken();
          unawaited(Get.offNamed(JokePage.name));
        } else {
          unawaited(Get.offNamed(LoginPage.name));
        }
      },
    );
  }

  final AuthService authService = GetIt.I.get<AuthService>();

  @observable
  bool isAuthenticated;

  void unawaited(Future<void> future) {}
}
