import 'package:json_annotation/json_annotation.dart';

part 'user_context.g.dart';

@JsonSerializable()
class UserContext {
  String? lang;
  String? tz;
  int? uid;

  UserContext({this.lang, this.tz, this.uid});

  factory UserContext.fromJson(Map<String, dynamic> json) {
    return _$UserContextFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserContextToJson(this);
}
