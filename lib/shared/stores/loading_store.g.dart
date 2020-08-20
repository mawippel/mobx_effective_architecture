// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loading_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoadingStore on _LoadingBase, Store {
  final _$_loadingAtom = Atom(name: '_LoadingBase._loading');

  @override
  IsLoading get _loading {
    _$_loadingAtom.reportRead();
    return super._loading;
  }

  @override
  set _loading(IsLoading value) {
    _$_loadingAtom.reportWrite(value, super._loading, () {
      super._loading = value;
    });
  }

  final _$_LoadingBaseActionController = ActionController(name: '_LoadingBase');

  @override
  void startLoading() {
    final _$actionInfo = _$_LoadingBaseActionController.startAction(
        name: '_LoadingBase.startLoading');
    try {
      return super.startLoading();
    } finally {
      _$_LoadingBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void endLoading() {
    final _$actionInfo = _$_LoadingBaseActionController.startAction(
        name: '_LoadingBase.endLoading');
    try {
      return super.endLoading();
    } finally {
      _$_LoadingBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
