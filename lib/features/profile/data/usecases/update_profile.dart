import 'package:dartz/dartz.dart';
import 'package:we_date/core/utils/classes.dart';
import 'package:we_date/core/utils/errors.dart';
import 'package:we_date/features/profile/data/repository/profile_repository.dart';

class UpdateProfile implements Usecases<VoidType, UpdateProfileParam> {
  final ProfileRepository _profileRepository;

  UpdateProfile(this._profileRepository);

  @override
  Future<Either<UIError, VoidType>> call(UpdateProfileParam param) async {
    try {
      await _profileRepository.updateProfile(
        gender: param.gender,
        firstName: param.firstName,
        lastName: param.lastName,
        profileImageURL: param.profileImageURL,
      );
      return const Right(VoidType());
    } on NetworkFailure catch (e) {
      return Left(UIError(e.message));
    }
  }
}

class UpdateProfileParam {
  final String? firstName;
  final String? lastName;
  final String gender;
  final String? profileImageURL;

  UpdateProfileParam({
    required this.gender,
    this.firstName,
    this.lastName,
    this.profileImageURL,
  });
}
