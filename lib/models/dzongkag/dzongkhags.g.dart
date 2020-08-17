// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dzongkhags.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dzongkhags _$DzongkhagsFromJson(Map<String, dynamic> json) {
  return Dzongkhags(
    dzongkhags: (json['dzongkhags'] as List)
        ?.map((e) =>
            e == null ? null : Dzongkhag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DzongkhagsToJson(Dzongkhags instance) =>
    <String, dynamic>{
      'dzongkhags': instance.dzongkhags,
    };
