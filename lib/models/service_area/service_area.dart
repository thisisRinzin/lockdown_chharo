import 'package:json_annotation/json_annotation.dart';

part 'service_area.g.dart';

@JsonSerializable()
class ServiceArea {
  int id;
  String name;
  @JsonKey(name: 'dzongkhag_name')
  String dzongkhagName;

  ServiceArea({
    this.id,
    this.name,
    this.dzongkhagName,
  });

  factory ServiceArea.fromJson(Map<String, dynamic> json) =>
      _$ServiceAreaFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceAreaToJson(this);
}
