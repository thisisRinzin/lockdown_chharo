import 'package:json_annotation/json_annotation.dart';
import 'package:lockdown_chharo/models/dzongkag/dzongkhag.dart';

part 'dzongkhags.g.dart';

@JsonSerializable()
class Dzongkhags {
  List<Dzongkhag> dzongkhags;

  Dzongkhags({this.dzongkhags});

  factory Dzongkhags.fromJson(Map<String, dynamic> json) =>
      _$DzongkhagsFromJson(json);

  Map<String, dynamic> toJson() => _$DzongkhagsToJson(this);
}
