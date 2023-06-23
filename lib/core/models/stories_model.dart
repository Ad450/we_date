import 'package:freezed_annotation/freezed_annotation.dart';

part 'stories_model.freezed.dart';

part 'stories_model.g.dart';

@freezed
abstract class StoriesModel with _$StoriesModel {
  factory StoriesModel({
    required String postedBy,
    required String caption,
    String? lastName,
    String? profileImage,
    String? numberOfProfileImages,
    List<String>? likedBy,
    DateTime? uploadedAt,
    DateTime? deleteAt,
  }) = _StoriesModel;

  factory StoriesModel.fromJson(Map<String, dynamic> json) =>
      _$StoriesModelFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}
