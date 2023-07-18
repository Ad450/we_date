abstract class ProfileRepository {
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
  });
}
