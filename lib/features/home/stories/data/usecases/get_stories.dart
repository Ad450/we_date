import 'package:dartz/dartz.dart';
import 'package:we_date/core/models/stories_model.dart';
import 'package:we_date/core/utils/classes.dart';
import 'package:we_date/core/utils/errors.dart';
import 'package:we_date/features/home/stories/data/repository/stories_repository.dart';

class GetStories implements Usecase<List<StoryModel>, NoParam> {
  final StoriesRepository _storiesRepository;

  GetStories(this._storiesRepository);

  @override
  Future<Either<UIError, List<StoryModel>>> call(NoParam param) async {
    try {
      final stories = await _storiesRepository.getStories();
      return Right(stories);
    } on NetworkFailure catch (e) {
      return Left(UIError(e.message));
    }
  }

}