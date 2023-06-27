import 'package:freezed_annotation/freezed_annotation.dart';

part 'stories_model.freezed.dart';

part 'stories_model.g.dart';

@freezed
abstract class StoryModel with _$StoryModel {
  factory StoryModel({
    required String postedBy,
    required String caption,
    required String url,
    String? id,
    List<String>? likedBy,
    DateTime? uploadedAt,
    DateTime? deleteAt,
  }) = _StoryModel;

  factory StoryModel.fromJson(Map<String, dynamic> json) =>
      _$StoryModelFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}
