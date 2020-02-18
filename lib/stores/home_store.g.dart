// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
  final _$jokesAtom = Atom(name: '_HomeStoreBase.jokes');

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

  final _$isLoadingAtom = Atom(name: '_HomeStoreBase.isLoading');

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
  Future fetchJoke() {
    return _$fetchJokeAsyncAction.run(() => super.fetchJoke());
  }

  @override
  String toString() {
    final string =
        'jokes: ${jokes.toString()},isLoading: ${isLoading.toString()}';
    return '{$string}';
  }
}
