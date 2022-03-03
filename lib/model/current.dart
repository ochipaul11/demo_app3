import 'package:json_annotation/json_annotation.dart';
import 'condition.dart';
part 'current.g.dart';

@JsonSerializable(explicitToJson: true)
class Current{
  Current(this.is_day,this.condition,this.uv);
  int is_day;
  Condition condition;
  double uv;

  factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentToJson(this);

}
