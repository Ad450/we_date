// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PreferencesModel _$$_PreferencesModelFromJson(Map<String, dynamic> json) =>
    _$_PreferencesModel(
      uid: json['uid'] as String,
      gender: json['gender'] as String?,
      country: json['country'] as String?,
      religion: json['religion'] as String?,
      height: json['height'] as String?,
      age: json['age'] as String?,
      occupation: json['occupation'] as String?,
      education: json['education'] as String?,
    );

Map<String, dynamic> _$$_PreferencesModelToJson(_$_PreferencesModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'gender': instance.gender,
      'country': instance.country,
      'religion': instance.religion,
      'height': instance.height,
      'age': instance.age,
      'occupation': instance.occupation,
      'education': instance.education,
    };
