import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:we_date/core/models/stories_model.dart';

part 'stories_state.freezed.dart';

@freezed
class StoriesState with _$StoriesState {
  const factory StoriesState.initial() = StoriesStateInitial;

  const factory StoriesState.getStoriesLoading() = StoriesStateGetStoriesLoading;

  const factory StoriesState.getStoriesSuccess(List<StoryModel> stories) = StoriesStateGetStoriesSuccess;

  const factory StoriesState.getStoriesError(String message) = StoriesStateGetStoriesError;

  const factory StoriesState.uploadStoryLoading() = StoriesStateUploadStoryLoading;

  const factory StoriesState.uploadStorySuccess() = StoriesStateUploadStorySuccess;

  const factory StoriesState.uploadStoryError(String message) = StoriesStateUploadStoryError;
}
