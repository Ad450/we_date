import 'package:firebase_auth/firebase_auth.dart';
import 'package:we_date/core/datastore/database_client.dart';
import 'package:we_date/core/utils/errors.dart';
import 'package:we_date/core/utils/error_messages.dart';

abstract class ProfileRemoteDatasource {
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
  });
}

class ProfileRemoteDatasourceImpl implements ProfileRemoteDatasource {
  final DatabaseClient _db;

  ProfileRemoteDatasourceImpl(this._db);

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
  }) async {
    try {
      final uid = FirebaseAuth.instance.currentUser!.uid;
      await _db.updateByUniqueIdentifier(
        Collections.profile,
        identifierValue: uid,
        identifierkey: "uid",
        data: {
          "heightValue": heightValue.toString(),
          "selectedInterest": selectedInterest,
          "selectedHeightUnit": selectedHeightUnit,
          "selectedGender": selectedGender,
          "selectedBodyType": selectedBodyType,
          "selectedDrinking": selectedDrinking,
          "selectedLifestyleChoices": selectedLifestyleChoices,
          "selectedLookingFor": selectedLookingFor,
          "selectedReligion": selectedReligion,
          "selectedWorkout": selectedWorkout,
          "username": username,
          "selectedInterests": selectedInterests,
          "profileImagePath": profileImagePath,
          "publicPhotosPaths": publicPhotosPaths,
          "privatePhotosPaths": privatePhotosPaths,
        },
      );
    } on DbFailure catch (e) {
      throw ApiFailure(e.message);
    } catch (e) {
      throw ApiFailure(UPDATE_PROFILE_FAILURE);
    }
  }
}
