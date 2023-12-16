// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      partnerRelatedPlantId: json['partner_related_plant_id'] as int?,
      companyName: json['company_name'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      authorityLogin: json['authority_login'] as bool?,
      hospitalActionId: json['hospital_action_id'] as int?,
      db: json['db'] as String?,
      userContext: json['user_context'] == null
          ? null
          : UserContext.fromJson(json['user_context'] as Map<String, dynamic>),
      name: json['name'] as String?,
      mobile: json['mobile'] as String?,
      plantResponseId: json['plant_response_id'] as String?,
      sessionId: json['session_id'] as String?,
      allowInactiveScanning: json['allow_inactive_scanning'] as bool?,
      partnerResponseId: json['partner_response_id'],
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'partner_related_plant_id': instance.partnerRelatedPlantId,
      'company_name': instance.companyName,
      'email': instance.email,
      'username': instance.username,
      'authority_login': instance.authorityLogin,
      'hospital_action_id': instance.hospitalActionId,
      'db': instance.db,
      'user_context': instance.userContext,
      'name': instance.name,
      'mobile': instance.mobile,
      'plant_response_id': instance.plantResponseId,
      'session_id': instance.sessionId,
      'allow_inactive_scanning': instance.allowInactiveScanning,
      'partner_response_id': instance.partnerResponseId,
    };
