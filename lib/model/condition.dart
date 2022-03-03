import 'package:json_annotation/json_annotation.dart';

part 'condition.g.dart';

//USE "flutter packages pub run build_runner build" to automatically generate ToJson anf FromJson methods

@JsonSerializable()
class Condition {
  Condition(this.text);
  String text;

 factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);
 Map<String, dynamic> toJson() => _$ConditionToJson(this);

}