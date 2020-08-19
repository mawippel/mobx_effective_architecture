// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$JokeStore on _JokeStoreBase, Store {
  final _$jokesAtom = Atom(name: '_JokeStoreBase.jokes');

  @override
  ObservableList<Joke> get jokes {
    _$jokesAtom.reportRead();
    return super.jokes;
  }

  @override
  set jokes(ObservableList<Joke> value) {
    _$jokesAtom.reportWrite(value, super.jokes, () {
      super.jokes = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_JokeStoreBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$fetchJokeAsyncAction = AsyncAction('_JokeStoreBase.fetchJoke');

  @override
  Future<dynamic> fetchJoke() {
    return _$fetchJokeAsyncAction.run(() => super.fetchJoke());
  }

  final _$fetchJokeWithErrorAsyncAction =
      AsyncAction('_JokeStoreBase.fetchJokeWithError');

  @override
  Future<dynamic> fetchJokeWithError() {
    return _$fetchJokeWithErrorAsyncAction
        .run(() => super.fetchJokeWithError());
  }

  final _$_JokeStoreBaseActionController =
      ActionController(name: '_JokeStoreBase');

  @override
  void addJoke(Joke joke) {
    final _$actionInfo = _$_JokeStoreBaseActionController.startAction(
        name: '_JokeStoreBase.addJoke');
    try {
      return super.addJoke(joke);
    } finally {
      _$_JokeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
jokes: ${jokes},
isLoading: ${isLoading}
    ''';
  }
}
