import 'package:json_annotation/json_annotation.dart';

import 'user_context.dart';

part 'result.g.dart';

@JsonSerializable()
class Result {
  @JsonKey(name: 'partner_related_plant_id')
  int? partnerRelatedPlantId;
  @JsonKey(name: 'company_name')
  String? companyName;
  String? email;
  @JsonKey(name: 'username')
  String? username;
  @JsonKey(name: 'authority_login')
  bool? authorityLogin;
  @JsonKey(name: 'hospital_action_id')
  int? hospitalActionId;
  String? db;
  @JsonKey(name: 'user_context')
  UserContext? userContext;
  String? name;
  String? mobile;
  @JsonKey(name: 'plant_response_id')
  String? plantResponseId;
  @JsonKey(name: 'session_id')
  String? sessionId;
  @JsonKey(name: 'allow_inactive_scanning')
  bool? allowInactiveScanning;
  @JsonKey(name: 'partner_response_id')
  dynamic partnerResponseId;

  Result({
    this.partnerRelatedPlantId,
    this.companyName,
    this.email,
    this.username,
    this.authorityLogin,
    this.hospitalActionId,
    this.db,
    this.userContext,
    this.name,
    this.mobile,
    this.plantResponseId,
    this.sessionId,
    this.allowInactiveScanning,
    this.partnerResponseId,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
