import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'model.g.dart';

@JsonSerializable()
class Model {
  @JsonKey(name: 'jsonrpc')
  String? jsonrpc;
  dynamic id;
  @JsonKey(name: 'result')
  Map<String, dynamic> result;

  Model({this.jsonrpc, this.id, required this.result});

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);

  Map<String, dynamic> toJson() => _$ModelToJson(this);
}
