import 'package:dartz/dartz.dart';
import 'package:we_date/core/utils/classes.dart';
import 'package:we_date/core/utils/errors.dart';
import 'package:we_date/features/profile/data/repository/profile_repository.dart';

class UpdateProfile implements Usecase<VoidType, UpdateProfileParam> {
  final ProfileRepository _profileRepository;

  UpdateProfile(this._profileRepository);

  @override
  Future<Either<UIError, VoidType>> call(UpdateProfileParam param) async {
    try {
      await _profileRepository.updateProfile(
        heightValue: param.heightValue.toString(),
        selectedInterest: param.selectedInterest,
        selectedHeightUnit: param.selectedHeightUnit,
        selectedGender: param.selectedGender,
        selectedBodyType: param.selectedBodyType,
        selectedDrinking: param.selectedDrinking,
        selectedLifestyleChoices: param.selectedLifestyleChoices,
        selectedLookingFor: param.selectedLookingFor,
        selectedReligion: param.selectedReligion,
        selectedWorkout: param.selectedWorkout,
        username: param.username,
        selectedInterests: param.selectedInterests,
        profileImagePath: param.profileImagePath,
        publicPhotosPaths: param.publicPhotosPaths,
        privatePhotosPaths: param.privatePhotosPaths,
        date: param.date,
      );
      return const Right(VoidType());
    } on NetworkFailure catch (e) {
      return Left(UIError(e.message));
    }
  }
}

class UpdateProfileParam {
  final String selectedReligion;
  final String selectedLookingFor;
  final String selectedLifestyleChoices;
  final String selectedDrinking;
  final Set<String> selectedInterests;
  final String selectedWorkout;
  final String selectedGender;
  final String selectedInterest;
  final String selectedBodyType;
  final String selectedHeightUnit;
  final String username;
  final double heightValue;
  final String? profileImagePath;
  final Set<String> publicPhotosPaths;
  final Set<String> privatePhotosPaths;
  final String date;

  UpdateProfileParam({
    required this.heightValue,
    required this.selectedInterest,
    required this.selectedHeightUnit,
    required this.selectedGender,
    required this.selectedBodyType,
    required this.selectedDrinking,
    required this.selectedLifestyleChoices,
    required this.selectedLookingFor,
    required this.selectedReligion,
    required this.selectedWorkout,
    required this.username,
    required this.selectedInterests,
    required this.profileImagePath,
    required this.publicPhotosPaths,
    required this.privatePhotosPaths,
    required this.date,
  });
}
