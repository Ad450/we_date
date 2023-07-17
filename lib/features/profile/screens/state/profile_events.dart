abstract class ProfileEvent {}

class UpdateProfileEvent extends ProfileEvent {
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

  UpdateProfileEvent({
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
  });
}
