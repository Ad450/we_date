import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_date/core/utils/classes.dart';
import 'package:we_date/features/home/stories/data/usecases/get_stories.dart';
import 'package:we_date/features/home/stories/data/usecases/upload_story.dart';
import 'package:we_date/features/home/stories/screens/state/stories_events.dart';
import 'package:we_date/features/home/stories/screens/state/stories_state.dart';

class StoriesBloc extends Bloc<StoriesEvent, StoriesState> {
  final GetStories getStories;
  final UploadStory uploadStory;

  StoriesBloc({required this.getStories, required this.uploadStory}) : super(const StoriesState.initial()) {
    on<GetStoriesEvent>(_getStories);
    on<UploadStoryEvent>(_uploadStory);
  }

  Future<void> _getStories(GetStoriesEvent event, Emitter<StoriesState> emit) async {
    emit(const StoriesState.getStoriesLoading());
    final result = await getStories(const NoParam());
    result.fold(
      (l) => emit(StoriesState.getStoriesError(l.message)),
      (r) => emit(StoriesState.getStoriesSuccess(r)),
    );
  }

  Future<void> _uploadStory(UploadStoryEvent event, Emitter<StoriesState> emit) async {
    emit(const StoriesState.uploadStoryLoading());
    final result = await uploadStory(UploadStoryParam(file: event.file, caption: event.caption));
    result.fold(
      (l) => emit(StoriesState.uploadStoryError(l.message)),
      (r) => emit(const StoriesState.uploadStorySuccess()),
    );
  }
}
