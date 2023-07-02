// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileModel _$$_ProfileModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileModel(
      uid: json['uid'] as String,
      gender: json['gender'] as String,
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      profileImage: json['profileImage'] as String?,
      numberOfProfileImages: json['numberOfProfileImages'] as String?,
      country: json['country'] as String?,
      religion: json['religion'] as String?,
      height: json['height'] as String?,
      age: json['age'] as String?,
      occupation: json['occupation'] as String?,
      education: json['education'] as String?,
    );

Map<String, dynamic> _$$_ProfileModelToJson(_$_ProfileModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'gender': instance.gender,
      'location': instance.location,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'profileImage': instance.profileImage,
      'numberOfProfileImages': instance.numberOfProfileImages,
      'country': instance.country,
      'religion': instance.religion,
      'height': instance.height,
      'age': instance.age,
      'occupation': instance.occupation,
      'education': instance.education,
    };
