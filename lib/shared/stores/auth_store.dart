import 'package:get/get.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_effective_architecture/domain/joke/joke_page.dart';
import 'package:mobx_effective_architecture/domain/login/auth_service.dart';
part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  _AuthStoreBase() {
    reaction<bool>(
      (_) => isAuthenticated,
      (isAuthenticated) async {
        if (isAuthenticated) {
          await AuthService.saveNewToken();
          Get.offNamed(JokePage.name);
        }
      },
    );
  }

  @observable
  bool isAuthenticated;
}
