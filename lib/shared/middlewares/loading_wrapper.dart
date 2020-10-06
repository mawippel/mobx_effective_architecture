class LoadingWrapper {
  LoadingWrapper(this.startLoading, this.endLoading);

  Function startLoading;
  Function endLoading;

  Future wrapAsyncCall(Function call) async {
    try {
      startLoading();
      return await call();
    } finally {
      endLoading();
    }
  }
}
