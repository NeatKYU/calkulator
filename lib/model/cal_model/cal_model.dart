import 'package:json_annotation/json_annotation.dart';

part 'cal_model.g.dart';

@JsonSerializable()
class CalModel {
  String? type;
  String? value;

  CalModel({this.type, this.value});

  factory CalModel.fromJson(Map<String, dynamic> json) {
    return _$CalModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CalModelToJson(this);
}
