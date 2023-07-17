import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_date/core/utils/classes.dart';
import 'package:we_date/features/auth/data/usecases/check_auth_status.dart';
import 'package:we_date/features/auth/data/usecases/signout.dart';
import 'package:we_date/features/auth/data/usecases/signup_or_login_with_fb.dart';
import 'package:we_date/features/auth/data/usecases/signup_or_login_with_google.dart';
import 'package:we_date/features/auth/state/auth_events.dart';
import 'package:we_date/features/auth/state/auth_state.dart';

class AuthenticationBloc extends Bloc<AuthEvent, AuthState> {
  final SignupOrLoginWithFacebook signupOrLoginWithFacebook;
  final SignupOrLoginWithGoogle signupOrLoginWithGoogle;
  final CheckAuthStatus checkAuthStatus;
  final Signout signout;

  AuthenticationBloc({
    required this.signupOrLoginWithFacebook,
    required this.signupOrLoginWithGoogle,
    required this.checkAuthStatus,
    required this.signout,
  }) : super(AuthStateInitial()) {
    on<SignupWithGoogleEvent>(authWithGoogle);
    on<SignupWithFacebookEvent>(authWithFacebook);
    on<AppStarted>(checkAuthenticationStatus);
    on<SignoutEvent>(signoutUser);
  }

  Future<void> authWithGoogle(AuthEvent event, Emitter<AuthState> emit) async {
    emit(AuthStateLoading());
    final result = await signupOrLoginWithGoogle(const NoParam());
    result.fold(
      (l) => emit(AuthErrorState(l.message)),
      (r) => emit(AuthSuccessState(r)),
    );
  }

  Future<void> authWithFacebook(AuthEvent event, Emitter<AuthState> emit) async {
    emit(AuthStateLoading());
    final result = await signupOrLoginWithFacebook(const NoParam());
    result.fold(
      (l) => emit(AuthErrorState(l.message)),
      (r) => emit(AuthSuccessState(r)),
    );
  }

  Future<bool> isAuthenticated() async => FirebaseAuth.instance.currentUser != null;

  Future<void> checkAuthenticationStatus(AppStarted event, Emitter<AuthState> emit) async {
    final result = await checkAuthStatus(const NoParam());
    result.fold(
      (l) => emit(UnauthenticatedState()),
      (r) => emit(AuthenticatedState()),
    );
  }

  Future<void> signoutUser(SignoutEvent event, Emitter<AuthState> emit) async {
    final result = await signout(const NoParam());
    result.fold(
      (l) => emit(AuthErrorState(l.message)),
      (r) => emit(UnauthenticatedState()),
    );
  }
}
