// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MatchModel _$$_MatchModelFromJson(Map<String, dynamic> json) =>
    _$_MatchModel(
      sender: json['sender'] as String,
      to: json['to'] as String,
      status: json['status'] as String,
      declinedAt: json['declinedAt'] == null
          ? null
          : DateTime.parse(json['declinedAt'] as String),
      acceptedAt: json['acceptedAt'] == null
          ? null
          : DateTime.parse(json['acceptedAt'] as String),
      sentAt: json['sentAt'] == null
          ? null
          : DateTime.parse(json['sentAt'] as String),
    );

Map<String, dynamic> _$$_MatchModelToJson(_$_MatchModel instance) =>
    <String, dynamic>{
      'sender': instance.sender,
      'to': instance.to,
      'status': instance.status,
      'declinedAt': instance.declinedAt?.toIso8601String(),
      'acceptedAt': instance.acceptedAt?.toIso8601String(),
      'sentAt': instance.sentAt?.toIso8601String(),
    };
