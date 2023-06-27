import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:we_date/core/utils/classes.dart';
import 'package:we_date/core/utils/errors.dart';
import 'package:we_date/features/home/stories/data/repository/stories_repository.dart';

class UploadStory implements Usecase<VoidType, UploadStoryParam> {
  final StoriesRepository _storiesRepository;

  UploadStory(this._storiesRepository);

  @override
  Future<Either<UIError, VoidType>> call(UploadStoryParam param) async {
    try {
      await _storiesRepository.uploadStory(param.file, param.caption);
      return const Right(VoidType());
    } on NetworkFailure catch (e) {
      return Left(UIError(e.message));
    }
  }
}

class UploadStoryParam {
  final XFile file;
  final String caption;

  UploadStoryParam({required this.file, required this.caption});
}
