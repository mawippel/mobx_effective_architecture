import 'package:json_annotation/json_annotation.dart';
import 'package:mobx_effective_architecture/domain/home/flag_model.dart';
part 'joke_model.g.dart';

@JsonSerializable()
class Joke {
  String category;
  String type;
  String setup;
  String delivery;
  @JsonKey(name: 'flags')
  Flag flag;

  Joke({this.category, this.type, this.setup, this.delivery, this.flag});

  factory Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);

  Map<String, dynamic> toJson() => _$JokeToJson(this);
}
