import 'package:mobx/mobx.dart';
import 'package:mobx_effective_architecture/domain/login/login_store.dart';
part 'main_store.g.dart';

class MainStore = _MainStoreBase with _$MainStore;

abstract class _MainStoreBase with Store {
  
  // Set stores
  final LoginStore loginStore = LoginStore();
  
}