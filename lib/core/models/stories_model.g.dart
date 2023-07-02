// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoryModel _$$_StoryModelFromJson(Map<String, dynamic> json) =>
    _$_StoryModel(
      postedBy: json['postedBy'] as String,
      caption: json['caption'] as String,
      url: json['url'] as String,
      id: json['id'] as String?,
      likedBy:
          (json['likedBy'] as List<dynamic>?)?.map((e) => e as String).toList(),
      uploadedAt: json['uploadedAt'] == null
          ? null
          : DateTime.parse(json['uploadedAt'] as String),
      deleteAt: json['deleteAt'] == null
          ? null
          : DateTime.parse(json['deleteAt'] as String),
    );

Map<String, dynamic> _$$_StoryModelToJson(_$_StoryModel instance) =>
    <String, dynamic>{
      'postedBy': instance.postedBy,
      'caption': instance.caption,
      'url': instance.url,
      'id': instance.id,
      'likedBy': instance.likedBy,
      'uploadedAt': instance.uploadedAt?.toIso8601String(),
      'deleteAt': instance.deleteAt?.toIso8601String(),
    };
