import 'package:json_annotation/json_annotation.dart';

part 'dzongkhag.g.dart';

@JsonSerializable()
class Dzongkhag {
  String name;
  int id;
  Dzongkhag({
    this.name,
    this.id,
  });

  factory Dzongkhag.fromJson(Map<String, dynamic> json) =>
      _$DzongkhagFromJson(json);

  Map<String, dynamic> toJson() => _$DzongkhagToJson(this);
}
