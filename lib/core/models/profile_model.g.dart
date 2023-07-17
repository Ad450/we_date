// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileModel _$$_ProfileModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileModel(
      uid: json['uid'] as String,
      location: json['location'] as Map<String, dynamic>?,
      heightValue: json['heightValue'] as String?,
      selectedInterest: json['selectedInterest'] as String?,
      selectedHeightUnit: json['selectedHeightUnit'] as String?,
      selectedGender: json['selectedGender'] as String?,
      selectedBodyType: json['selectedBodyType'] as String?,
      selectedDrinking: json['selectedDrinking'] as String?,
      selectedLifestyleChoices: json['selectedLifestyleChoices'] as String?,
      selectedLookingFor: json['selectedLookingFor'] as String?,
      selectedReligion: json['selectedReligion'] as String?,
      selectedWorkout: json['selectedWorkout'] as String?,
      username: json['username'] as String?,
      profileImagePath: json['profileImagePath'] as String?,
      publicPhotosPaths: (json['publicPhotosPaths'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toSet(),
      privatePhotosPaths: (json['privatePhotosPaths'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toSet(),
      selectedInterests: (json['selectedInterests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toSet(),
    );

Map<String, dynamic> _$$_ProfileModelToJson(_$_ProfileModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'location': instance.location,
      'heightValue': instance.heightValue,
      'selectedInterest': instance.selectedInterest,
      'selectedHeightUnit': instance.selectedHeightUnit,
      'selectedGender': instance.selectedGender,
      'selectedBodyType': instance.selectedBodyType,
      'selectedDrinking': instance.selectedDrinking,
      'selectedLifestyleChoices': instance.selectedLifestyleChoices,
      'selectedLookingFor': instance.selectedLookingFor,
      'selectedReligion': instance.selectedReligion,
      'selectedWorkout': instance.selectedWorkout,
      'username': instance.username,
      'profileImagePath': instance.profileImagePath,
      'publicPhotosPaths': instance.publicPhotosPaths?.toList(),
      'privatePhotosPaths': instance.privatePhotosPaths?.toList(),
      'selectedInterests': instance.selectedInterests?.toList(),
    };
