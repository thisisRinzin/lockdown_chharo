import 'package:json_annotation/json_annotation.dart';

import 'package:lockdown_chharo/models/meta/meta.dart';
import 'package:lockdown_chharo/models/service_area/service_area.dart';

part 'service_areas.g.dart';

@JsonSerializable()
class ServiceAreas {
  @JsonKey(name: 'service_areas')
  List<ServiceArea> serviceAreas;
  Meta meta;
  ServiceAreas({
    this.serviceAreas,
    this.meta,
  });

  factory ServiceAreas.fromJson(Map<String, dynamic> json) =>
      _$ServiceAreasFromJson(json);
}
