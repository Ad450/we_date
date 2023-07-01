import 'package:dartz/dartz.dart';
import 'package:we_date/core/models/profile_model.dart';
import 'package:we_date/core/utils/classes.dart';
import 'package:we_date/core/utils/errors.dart';
import 'package:we_date/features/home/discover/data/repository/DiscoverRepository.dart';

class FetchDiscoveredProfiles implements Usecase<List<ProfileModel>, NoParam> {
  final DiscoveryRepository _discoveryRepository;

  FetchDiscoveredProfiles(this._discoveryRepository);

  @override
  Future<Either<UIError, List<ProfileModel>>> call(NoParam param) async {
    try {
      final profiles = await _discoveryRepository.fetchDiscoveredProfiles();
      return Right(profiles);
    } on NetworkFailure catch (e) {
      return Left(UIError(e.message));
    }
  }
}
