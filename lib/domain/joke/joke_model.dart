import 'package:json_annotation/json_annotation.dart';
import 'package:mobx_effective_architecture/domain/joke/flag_model.dart';
part 'joke_model.g.dart';

@JsonSerializable()
class Joke {
  Joke({this.category, this.type, this.setup, this.delivery, this.flag});
  factory Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);

  String category;
  String type;
  String setup;
  String delivery;
  @JsonKey(name: 'flags')
  Flag flag;

  Map<String, dynamic> toJson() => _$JokeToJson(this);
}
