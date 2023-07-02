import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_date/features/profile/data/usecases/update_profile.dart';
import 'package:we_date/features/profile/screens/state/profile_events.dart';
import 'package:we_date/features/profile/screens/state/profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final UpdateProfile updateProfile;

  ProfileBloc({required this.updateProfile}) : super(const ProfileState.updateProfileInitial()) {}

  Future<void> _updateProfile(UpdateProfileEvent event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.updateProfileInitial());
    final result = await updateProfile(UpdateProfileParam(
      gender: event.gender,
      firstName: event.firstName,
      lastName: event.lastName,
      profileImageURL: event.profileImageURL,
    ));
    result.fold(
      (l) => emit(ProfileState.updateProfileError(l.message)),
      (r) => emit(const ProfileState.updateProfileSuccess()),
    );
  }
}
