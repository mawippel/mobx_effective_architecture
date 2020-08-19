// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStoreBase, Store {
  Computed<bool> _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??=
          Computed<bool>(() => super.isValid, name: '_LoginStoreBase.isValid'))
      .value;
  Computed<String> _$validateUsernameComputed;

  @override
  String get validateUsername => (_$validateUsernameComputed ??=
          Computed<String>(() => super.validateUsername,
              name: '_LoginStoreBase.validateUsername'))
      .value;
  Computed<String> _$validatePasswordComputed;

  @override
  String get validatePassword => (_$validatePasswordComputed ??=
          Computed<String>(() => super.validatePassword,
              name: '_LoginStoreBase.validatePassword'))
      .value;

  final _$usernameAtom = Atom(name: '_LoginStoreBase.username');

  @override
  String get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  final _$passwordAtom = Atom(name: '_LoginStoreBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$_LoginStoreBaseActionController =
      ActionController(name: '_LoginStoreBase');

  @override
  void setUsername(String newValue) {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.setUsername');
    try {
      return super.setUsername(newValue);
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String newValue) {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.setPassword');
    try {
      return super.setPassword(newValue);
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
username: ${username},
password: ${password},
isValid: ${isValid},
validateUsername: ${validateUsername},
validatePassword: ${validatePassword}
    ''';
  }
}
