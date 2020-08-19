// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_joke_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CustomJokeStore on _CustomJokeStoreBase, Store {
  final _$textAtom = Atom(name: '_CustomJokeStoreBase.text');

  @override
  String get text {
    _$textAtom.reportRead();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.reportWrite(value, super.text, () {
      super.text = value;
    });
  }

  @override
  String toString() {
    return '''
text: ${text}
    ''';
  }
}
