// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Joke _$JokeFromJson(Map<String, dynamic> json) {
  return Joke(
    category: json['category'] as String,
    type: json['type'] as String,
    setup: json['setup'] as String,
    delivery: json['delivery'] as String,
    flag: json['flags'] == null
        ? null
        : Flag.fromJson(json['flags'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$JokeToJson(Joke instance) => <String, dynamic>{
      'category': instance.category,
      'type': instance.type,
      'setup': instance.setup,
      'delivery': instance.delivery,
      'flags': instance.flag,
    };
