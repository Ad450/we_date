// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthStatePayload _$$_AuthStatePayloadFromJson(Map<String, dynamic> json) =>
    _$_AuthStatePayload(
      error: json['error'] as String?,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthStatePayloadToJson(_$_AuthStatePayload instance) =>
    <String, dynamic>{
      'error': instance.error,
      'user': instance.user,
    };
