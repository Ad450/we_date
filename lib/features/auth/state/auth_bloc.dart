import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_date/core/utils/classes.dart';
import 'package:we_date/features/auth/data/usecases/check_auth_status.dart';
import 'package:we_date/features/auth/data/usecases/signup_or_login_with_fb.dart';
import 'package:we_date/features/auth/data/usecases/signup_or_login_with_google.dart';
import 'package:we_date/features/auth/state/auth_events.dart';
import 'package:we_date/features/auth/state/auth_state.dart';

class AuthenticationBloc extends Bloc<AuthEvent, AuthState> {
  final SignupOrLoginWithFacebook signupOrLoginWithFacebook;
  final SignupOrLoginWithGoogle signupOrLoginWithGoogle;
  final CheckAuthStatus checkAuthStatus;

  AuthenticationBloc({
    required this.signupOrLoginWithFacebook,
    required this.signupOrLoginWithGoogle,
    required this.checkAuthStatus,
  }) : super(const AuthState.initial()) {
    on<SignupWithGoogleEvent>(authWithGoogle);
    on<SignupWithFacebookEvent>(authWithFacebook);
    on<AppStarted>(checkAuthenticationStatus);
  }

  Future<void> authWithGoogle(AuthEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await signupOrLoginWithGoogle(const NoParam());
    result.fold(
          (l) => emit(AuthState.error(payload: AuthStatePayload(error: l.message, user: null))),
          (r) => emit(AuthState.error(payload: AuthStatePayload(error: null, user: r))),
    );
  }

  Future<void> authWithFacebook(AuthEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await signupOrLoginWithFacebook(const NoParam());
    result.fold(
          (l) => emit(AuthState.error(payload: AuthStatePayload(error: l.message, user: null))),
          (r) => emit(AuthState.error(payload: AuthStatePayload(error: null, user: r))),
    );
  }

  Future<bool> isAuthenticated() async => FirebaseAuth.instance.currentUser != null;

  Future<void> checkAuthenticationStatus(AppStarted event, Emitter<AuthState> emit) async {
    final result = await checkAuthStatus(const NoParam());
    result.fold(
          (l) => emit(const AuthState.unAuthenticated()),
          (r) => emit(const AuthState.authenticated()),
    );
  }


}
