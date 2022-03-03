// To parse this JSON data, do
//
//     final weathers = weathersFromJson(jsonString);

import 'dart:convert';

Weathers weathersFromJson(String str) => Weathers.fromJson(json.decode(str));

String weathersToJson(Weathers data) => json.encode(data.toJson());

class Weathers {
  Weathers({
    required this.location,
    required this.current,
  });

  Location location;
  Current current;

  factory Weathers.fromJson(Map<String, dynamic> json) => Weathers(
    location: Location.fromJson(json["location"]),
    current: Current.fromJson(json["current"]),
  );

  Map<String, dynamic> toJson() => {
    "location": location.toJson(),
    "current": current.toJson(),
  };
}

class Current {
  Current({
    required this.isDay,
    required this.condition,
    required this.uv,
  });

  int isDay;
  Condition condition;
  int uv;

  factory Current.fromJson(Map<String, dynamic> json) => Current(
    isDay: json["is_day"],
    condition: Condition.fromJson(json["condition"]),
    uv: json["uv"],
  );

  Map<String, dynamic> toJson() => {
    "is_day": isDay,
    "condition": condition.toJson(),
    "uv": uv,
  };
}

class Condition {
  Condition({
    required this.text,
  });

  String text;

  factory Condition.fromJson(Map<String, dynamic> json) => Condition(
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "text": text,
  };
}

class Location {
  Location({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.tzId,
    required this.localtimeEpoch,
    required this.localtime,
  });

  String name;
  String region;
  String country;
  double lat;
  double lon;
  String tzId;
  int localtimeEpoch;
  String localtime;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    name: json["name"],
    region: json["region"],
    country: json["country"],
    lat: json["lat"].toDouble(),
    lon: json["lon"].toDouble(),
    tzId: json["tz_id"],
    localtimeEpoch: json["localtime_epoch"],
    localtime: json["localtime"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "region": region,
    "country": country,
    "lat": lat,
    "lon": lon,
    "tz_id": tzId,
    "localtime_epoch": localtimeEpoch,
    "localtime": localtime,
  };
}
