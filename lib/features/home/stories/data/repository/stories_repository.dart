import 'package:image_picker/image_picker.dart';
import 'package:we_date/core/models/stories_model.dart';
import 'package:we_date/core/utils/functions.dart';
import 'package:we_date/features/home/stories/data/datasource/remote/stories_remote_datasource.dart';

abstract class StoriesRepository {
  Future<void> uploadStory(XFile file, String caption);

  Future<List<StoryModel>> getStories();
}

class StoriesRepositoryImpl implements StoriesRepository {
  final StoriesRemoteDatasource _storiesRemoteDatasource;

  StoriesRepositoryImpl(this._storiesRemoteDatasource);

  @override
  Future<List<StoryModel>> getStories() async {
    return await guardedApiCall(() => _storiesRemoteDatasource.getStories());
  }

  @override
  Future<void> uploadStory(XFile file, String caption) async {
    return await guardedApiCall(
      () => _storiesRemoteDatasource.uploadStory(file, caption),
    );
  }
}
