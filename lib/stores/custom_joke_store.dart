import 'package:mobx/mobx.dart';
part 'custom_joke_store.g.dart';

class CustomJokeStore = _CustomJokeStoreBase with _$CustomJokeStore;

abstract class _CustomJokeStoreBase with Store {

  @observable
  String text;

}