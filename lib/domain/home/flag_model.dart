import 'package:json_annotation/json_annotation.dart';
part 'flag_model.g.dart';

@JsonSerializable()
class Flag {
  bool nsfw;
  bool religious;
  bool political;
  bool racist;
  bool sexist;

  Flag({this.nsfw, this.religious, this.political, this.racist, this.sexist});

  factory Flag.fromJson(Map<String, dynamic> json) => _$FlagFromJson(json);

  Map<String, dynamic> toJson() => _$FlagToJson(this);
}
