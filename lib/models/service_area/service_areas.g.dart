// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_areas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceAreas _$ServiceAreasFromJson(Map<String, dynamic> json) {
  return ServiceAreas(
    serviceAreas: (json['service_areas'] as List)
        ?.map((e) =>
            e == null ? null : ServiceArea.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ServiceAreasToJson(ServiceAreas instance) =>
    <String, dynamic>{
      'service_areas': instance.serviceAreas,
      'meta': instance.meta,
    };
