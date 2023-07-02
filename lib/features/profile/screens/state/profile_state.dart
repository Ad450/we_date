import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.updateProfileInitial() = _ProfileStateUpdateProfileInitial;

  const factory ProfileState.updateProfileLoading() = _ProfileStateUpdateProfileLoading;

  const factory ProfileState.updateProfileSuccess() = _ProfileStateUpdateProfileSuccess;

  const factory ProfileState.updateProfileError(String message) = _ProfileStateUpdateProfileError;
}
