import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:we_date/core/models/profile_model.dart';

part 'discover_state.freezed.dart';

@freezed
class DiscoverState with _$DiscoverState {

  const factory DiscoverState.fetchProfilesInitial() = DiscoverStateInitial;

  const factory DiscoverState.fetchProfilesLoading() = DiscoverStateFetchProfilesLoading;

  const factory DiscoverState.fetchProfilesSuccess({
    required List<ProfileModel> profiles,
  }) = DiscoverStateFetchProfilesSuccess;

  const factory DiscoverState.fetchProfilesError({required String message}) = DiscoverStateFetchProfilesError;
}
