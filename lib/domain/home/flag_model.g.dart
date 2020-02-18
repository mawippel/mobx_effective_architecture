// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flag_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Flag _$FlagFromJson(Map<String, dynamic> json) {
  return Flag(
    nsfw: json['nsfw'] as bool,
    religious: json['religious'] as bool,
    political: json['political'] as bool,
    racist: json['racist'] as bool,
    sexist: json['sexist'] as bool,
  );
}

Map<String, dynamic> _$FlagToJson(Flag instance) => <String, dynamic>{
      'nsfw': instance.nsfw,
      'religious': instance.religious,
      'political': instance.political,
      'racist': instance.racist,
      'sexist': instance.sexist,
    };
