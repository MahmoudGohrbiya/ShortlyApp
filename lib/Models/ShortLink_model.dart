import 'package:json_annotation/json_annotation.dart';

part 'ShortLink_model.g.dart';

@JsonSerializable()
class ShortLink_model {
  ShortLink_model(
    this.result,
    this.ok,
  );

  @JsonKey(name: "result", includeIfNull: false)
  DataResult? result;
  @JsonKey(name: "ok", includeIfNull: false)
  bool? ok;

  factory ShortLink_model.fromJson(Map<String, dynamic> json) =>
      _$ShortLink_modelFromJson(json);

  Map<String, dynamic> toJson() => _$ShortLink_modelToJson(this);
}

@JsonSerializable()
class DataResult {
  DataResult(
      this.code,
      this.full_share_link,
      this.full_short_link,
      this.full_short_link2,
      this.original_link,
      this.share_link,
      this.short_link,
      this.short_link2);

  @JsonKey(name: "code", includeIfNull: false)
  String? code;
  @JsonKey(name: "short_link", includeIfNull: false)
  String? short_link;
  @JsonKey(name: "full_short_link", includeIfNull: false)
  String? full_short_link;
  @JsonKey(name: "short_link2", includeIfNull: false)
  String? short_link2;
  @JsonKey(name: "full_short_link2", includeIfNull: false)
  String? full_short_link2;
  @JsonKey(name: "share_link", includeIfNull: false)
  String? share_link;
  @JsonKey(name: "full_share_link", includeIfNull: false)
  String? full_share_link;
  @JsonKey(name: "original_link", includeIfNull: false)
  String? original_link;

  factory DataResult.fromJson(Map<String, dynamic> json) =>
      _$DataResultFromJson(json);

  Map<String, dynamic> toJson() => _$DataResultToJson(this);
}
