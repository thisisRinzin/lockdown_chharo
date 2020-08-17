import 'package:json_annotation/json_annotation.dart';

part 'meta.g.dart';

@JsonSerializable()
class Meta {
  int previous;
  int current;
  int nextPage;
  int lastPage;
  int total;

  Meta({
    this.previous,
    this.current,
    this.nextPage,
    this.lastPage,
    this.total,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
