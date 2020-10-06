import 'package:mobx/mobx.dart';

import '../middlewares/loading_wrapper.dart';
import '../models/is_loading.dart';

part 'loading_store.g.dart';

class LoadingStore = _LoadingBase with _$LoadingStore;

abstract class _LoadingBase with Store {
  _LoadingBase() {
    _loading = IsLoading(false);
    loadingWrapper = LoadingWrapper(startLoading, endLoading);
  }

  @observable
  IsLoading _loading;

  LoadingWrapper loadingWrapper;

  bool get isLoading {
    return _loading.value;
  }

  @action
  void startLoading() => _loading = IsLoading(true);

  @action
  void endLoading() => _loading = IsLoading(false);
}
