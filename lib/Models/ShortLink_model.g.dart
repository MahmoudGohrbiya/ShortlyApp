// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ShortLink_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShortLink_model _$ShortLink_modelFromJson(Map<String, dynamic> json) =>
    ShortLink_model(
      json['result'] == null
          ? null
          : DataResult.fromJson(json['result'] as Map<String, dynamic>),
      json['ok'] as bool?,
    );

Map<String, dynamic> _$ShortLink_modelToJson(ShortLink_model instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('result', instance.result);
  writeNotNull('ok', instance.ok);
  return val;
}

DataResult _$DataResultFromJson(Map<String, dynamic> json) => DataResult(
      json['code'] as String?,
      json['full_share_link'] as String?,
      json['full_short_link'] as String?,
      json['full_short_link2'] as String?,
      json['original_link'] as String?,
      json['share_link'] as String?,
      json['short_link'] as String?,
      json['short_link2'] as String?,
    );

Map<String, dynamic> _$DataResultToJson(DataResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('short_link', instance.short_link);
  writeNotNull('full_short_link', instance.full_short_link);
  writeNotNull('short_link2', instance.short_link2);
  writeNotNull('full_short_link2', instance.full_short_link2);
  writeNotNull('share_link', instance.share_link);
  writeNotNull('full_share_link', instance.full_share_link);
  writeNotNull('original_link', instance.original_link);
  return val;
}
