import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_date/features/profile/data/usecases/update_profile.dart';
import 'package:we_date/features/profile/screens/state/profile_events.dart';
import 'package:we_date/features/profile/screens/state/profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final UpdateProfile updateProfile;

  ProfileBloc({required this.updateProfile}) : super(const ProfileState.updateProfileInitial()) {
    on<UpdateProfileEvent>(_updateProfile);
  }

  Future<void> _updateProfile(UpdateProfileEvent event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.updateProfileLoading());
    final result = await updateProfile(UpdateProfileParam(
      heightValue: event.heightValue,
      selectedInterest: event.selectedInterest,
      selectedHeightUnit: event.selectedHeightUnit,
      selectedGender: event.selectedGender,
      selectedBodyType: event.selectedBodyType,
      selectedDrinking: event.selectedDrinking,
      selectedLifestyleChoices: event.selectedLifestyleChoices,
      selectedLookingFor: event.selectedLookingFor,
      selectedReligion: event.selectedReligion,
      selectedWorkout: event.selectedWorkout,
      username: event.username,
      selectedInterests: event.selectedInterests,
      profileImagePath: event.profileImagePath,
      publicPhotosPaths: event.publicPhotosPaths,
      privatePhotosPaths: event.privatePhotosPaths,
    ));
    result.fold(
      (l) => emit(ProfileState.updateProfileError(l.message)),
      (r) => emit(const ProfileState.updateProfileSuccess()),
    );
  }
}
