import 'package:mobx/mobx.dart';
import 'package:mobx_effective_architecture/stores/auth_store.dart';
import 'package:mobx_effective_architecture/stores/home_store.dart';
import 'package:mobx_effective_architecture/stores/login_store.dart';
part 'main_store.g.dart';

class MainStore = _MainStoreBase with _$MainStore;

abstract class _MainStoreBase with Store {
  // Set stores
  final LoginStore loginStore = LoginStore();
  final AuthStore authStore = AuthStore();
  final HomeStore homeStore = HomeStore();
}
