// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceArea _$ServiceAreaFromJson(Map<String, dynamic> json) {
  return ServiceArea(
    id: json['id'] as int,
    name: json['name'] as String,
    dzongkhagName: json['dzongkhag_name'] as String,
  );
}

Map<String, dynamic> _$ServiceAreaToJson(ServiceArea instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dzongkhag_name': instance.dzongkhagName,
    };
