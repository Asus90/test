// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Model _$ModelFromJson(Map<String, dynamic> json) => Model(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      result: json['result'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };
