// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      json['name'] as String,
      json['region'] as String,
      json['Country'] as String,
      (json['lat'] as num).toDouble(),
      (json['lon'] as num).toDouble(),
      json['locationtime_epoch'] as int,
      json['tz_id'] as String,
      DateTime.parse(json['localtime'] as String),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'Country': instance.Country,
      'lat': instance.lat,
      'lon': instance.lon,
      'tz_id': instance.tz_id,
      'locationtime_epoch': instance.locationtime_epoch,
      'localtime': instance.localtime.toIso8601String(),
    };
