// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
      json['is_day'] as int,
      Condition.fromJson(json['condition'] as Map<String, dynamic>),
      (json['uv'] as num).toDouble(),
    );

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'is_day': instance.is_day,
      'condition': instance.condition.toJson(),
      'uv': instance.uv,
    };
