// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return Meta(
    previous: json['previous'] as int,
    current: json['current'] as int,
    nextPage: json['nextPage'] as int,
    lastPage: json['lastPage'] as int,
    total: json['total'] as int,
  );
}

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'previous': instance.previous,
      'current': instance.current,
      'nextPage': instance.nextPage,
      'lastPage': instance.lastPage,
      'total': instance.total,
    };
