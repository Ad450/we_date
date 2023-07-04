import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:we_date/core/models/user_model.dart';

part 'auth_state.freezed.dart';

part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _AuthStateInitial;

  const factory AuthState.authenticated() = _AuthStateAuthenticated;

  const factory AuthState.unAuthenticated() = _AuthStateUnAuthenticated;

  const factory AuthState.loading() = _AuthStateLoading;

  const factory AuthState.success({required AuthStatePayload payload}) = _AuthStateSuccess;

  const factory AuthState.error({required AuthStatePayload payload}) = _AuthStateError;
}

@freezed
class AuthStatePayload with _$AuthStatePayload {
  const factory AuthStatePayload({
    required String? error,
    required UserModel? user,
  }) = _AuthStatePayload;

  factory AuthStatePayload.fromJson(Map json) =>
      _$AuthStatePayloadFromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}
