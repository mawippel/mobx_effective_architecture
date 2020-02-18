import 'package:json_annotation/json_annotation.dart';
part 'flag_model.g.dart';

@JsonSerializable()
class Flag {
  Flag({this.nsfw, this.religious, this.political, this.racist, this.sexist});
  factory Flag.fromJson(Map<String, dynamic> json) => _$FlagFromJson(json);

  bool nsfw;
  bool religious;
  bool political;
  bool racist;
  bool sexist;

  Map<String, dynamic> toJson() => _$FlagToJson(this);
}
