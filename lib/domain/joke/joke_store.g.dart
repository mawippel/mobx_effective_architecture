// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$JokeStore on _JokeStoreBase, Store {
  final _$jokesAtom = Atom(name: '_JokeStoreBase.jokes');

  @override
  ObservableList<Joke> get jokes {
    _$jokesAtom.context.enforceReadPolicy(_$jokesAtom);
    _$jokesAtom.reportObserved();
    return super.jokes;
  }

  @override
  set jokes(ObservableList<Joke> value) {
    _$jokesAtom.context.conditionallyRunInAction(() {
      super.jokes = value;
      _$jokesAtom.reportChanged();
    }, _$jokesAtom, name: '${_$jokesAtom.name}_set');
  }

  final _$isLoadingAtom = Atom(name: '_JokeStoreBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

  final _$fetchJokeAsyncAction = AsyncAction('fetchJoke');

  @override
  Future<dynamic> fetchJoke() {
    return _$fetchJokeAsyncAction.run(() => super.fetchJoke());
  }

  final _$fetchJokeWithErrorAsyncAction = AsyncAction('fetchJokeWithError');

  @override
  Future<dynamic> fetchJokeWithError() {
    return _$fetchJokeWithErrorAsyncAction
        .run(() => super.fetchJokeWithError());
  }

  final _$_JokeStoreBaseActionController =
      ActionController(name: '_JokeStoreBase');

  @override
  void addJoke(Joke joke) {
    final _$actionInfo = _$_JokeStoreBaseActionController.startAction();
    try {
      return super.addJoke(joke);
    } finally {
      _$_JokeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'jokes: ${jokes.toString()},isLoading: ${isLoading.toString()}';
    return '{$string}';
  }
}
