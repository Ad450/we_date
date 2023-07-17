// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:we_date/core/models/user_model.dart';
//
// part 'auth_state.freezed.dart';
//
// part 'auth_state.g.dart';
//
// @freezed
// class AuthState with _$AuthState {
//   const factory AuthState.initial() = _AuthStateInitial;
//
//   const factory AuthState.authenticated() = _AuthStateAuthenticated;
//
//   const factory AuthState.unAuthenticated() = _AuthStateUnAuthenticated;
//
//   const factory AuthState.loading() = _AuthStateLoading;
//
//   const factory AuthState.success({required AuthStatePayload payload}) = _AuthStateSuccess;
//   const factory AuthState.error({required AuthStatePayload payload}) = _AuthStateError;
// }
//
// @freezed
// class AuthStatePayload with _$AuthStatePayload {
//   const factory AuthStatePayload({
//     required String? error,
//     required UserModel? user,
//   }) = _AuthStatePayload;
//
//   factory AuthStatePayload.fromJson(Map json) =>
//       _$AuthStatePayloadFromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(json));
// }

import 'package:we_date/core/models/user_model.dart';

abstract class AuthState {}

class AuthStateInitial extends AuthState {}

class AuthenticatedState extends AuthState {}

class UnauthenticatedState extends AuthState {}

class AuthStateLoading extends AuthState {}

class AuthStateError extends AuthState {}

class AuthSuccessState extends AuthState {
  final UserModel user;

  AuthSuccessState(this.user);
}

class AuthErrorState extends AuthState {
  final String error;

  AuthErrorState(this.error);
}
