import 'package:we_date/core/models/user_model.dart';

abstract class AuthenticationRepository {
  Future<UserModel> signupOrLoginWithGoogle();

  Future<UserModel> signupOrLoginWithFacebook();

  Future<void> signout();
}
