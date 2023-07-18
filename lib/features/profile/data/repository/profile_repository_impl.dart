import 'package:we_date/core/utils/functions.dart';
import 'package:we_date/features/profile/data/datasources/remote_datasources/profile_remote_datasource.dart';
import 'package:we_date/features/profile/data/repository/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDatasource _profileRemoteDatasource;

  ProfileRepositoryImpl(this._profileRemoteDatasource);

  @override
  Future<void> updateProfile({
    required String heightValue,
    required String selectedInterest,
    required String selectedHeightUnit,
    required String selectedGender,
    required String selectedBodyType,
    required String selectedDrinking,
    required String selectedLifestyleChoices,
    required String selectedLookingFor,
    required String selectedReligion,
    required String selectedWorkout,
    required String username,
    required String? profileImagePath,
    required Set<String> publicPhotosPaths,
    required Set<String> privatePhotosPaths,
    required Set<String> selectedInterests,
    required String date,
  }) async {
    return await guardedApiCall(
      () => _profileRemoteDatasource.updateProfile(
        heightValue: heightValue.toString(),
        selectedInterest: selectedInterest,
        selectedHeightUnit: selectedHeightUnit,
        selectedGender: selectedGender,
        selectedBodyType: selectedBodyType,
        selectedDrinking: selectedDrinking,
        selectedLifestyleChoices: selectedLifestyleChoices,
        selectedLookingFor: selectedLookingFor,
        selectedReligion: selectedReligion,
        selectedWorkout: selectedWorkout,
        username: username,
        selectedInterests: selectedInterests,
        profileImagePath: profileImagePath,
        publicPhotosPaths: publicPhotosPaths,
        privatePhotosPaths: privatePhotosPaths,
        date: date,
      ),
    );
  }
}
