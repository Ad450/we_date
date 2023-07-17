import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:we_date/core/models/location_model.dart';

part 'profile_model.freezed.dart';

part 'profile_model.g.dart';

@freezed
abstract class ProfileModel with _$ProfileModel {
  factory ProfileModel({
    required String uid,
    required Map<String, dynamic>? location,
    String? heightValue,
    String? selectedInterest,
    String? selectedHeightUnit,
    String? selectedGender,
    String? selectedBodyType,
    String? selectedDrinking,
    String? selectedLifestyleChoices,
    String? selectedLookingFor,
    String? selectedReligion,
    String? selectedWorkout,
    String? username,
    String? profileImagePath,
    Set<String>? publicPhotosPaths,
    Set<String>? privatePhotosPaths,
    Set<String>? selectedInterests,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}
