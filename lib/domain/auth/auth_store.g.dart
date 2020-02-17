// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthStore on _AuthStoreBase, Store {
  final _$isAuthenticatedAtom = Atom(name: '_AuthStoreBase.isAuthenticated');

  @override
  bool get isAuthenticated {
    _$isAuthenticatedAtom.context.enforceReadPolicy(_$isAuthenticatedAtom);
    _$isAuthenticatedAtom.reportObserved();
    return super.isAuthenticated;
  }

  @override
  set isAuthenticated(bool value) {
    _$isAuthenticatedAtom.context.conditionallyRunInAction(() {
      super.isAuthenticated = value;
      _$isAuthenticatedAtom.reportChanged();
    }, _$isAuthenticatedAtom, name: '${_$isAuthenticatedAtom.name}_set');
  }

  @override
  String toString() {
    final string = 'isAuthenticated: ${isAuthenticated.toString()}';
    return '{$string}';
  }
}
