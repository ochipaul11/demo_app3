import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location{
  Location(this.name,this.region,this.Country,this.lat,this.lon,this.locationtime_epoch,this.tz_id,this.localtime);
   String name;
   String region;
   String Country;
   double lat;
   double lon;
   String tz_id;
   int locationtime_epoch;
   DateTime localtime;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);

}