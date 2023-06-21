import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:we_date/core/datastore/database_client.dart';
import 'package:we_date/core/models/user_model.dart';
import 'package:we_date/core/utils/errors.dart';
import 'package:we_date/core/utils/strings.dart';

abstract class AuthenticationRemoteDatasource {
  Future<UserModel> signupOrLoginWithGoogle();

  Future<UserModel> signupOrLoginWithFacebook();
}

class AuthenticationRemoteDatasourceImpl
    implements AuthenticationRemoteDatasource {
  final DatabaseClient _db;

  AuthenticationRemoteDatasourceImpl(this._db);

  @override
  Future<UserModel> signupOrLoginWithFacebook() async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);
      final userCredentials = await FirebaseAuth.instance
          .signInWithCredential(facebookAuthCredential);
      final user = UserModel(
        uid: userCredentials!.user!.uid,
        email: userCredentials!.user!.email!,
      );
      await _db.save(Collections.user, user.toJson());
      return user;
    } on DbFailure catch (e) {
      throw ApiFailure(e.message);
    } finally {
      throw ApiFailure(FACEBOOK_SIGNIN_FAILED);
    }
  }

  @override
  Future<UserModel> signupOrLoginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final googleCredentials = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      final userCredentials =
          await FirebaseAuth.instance.signInWithCredential(googleCredentials);
      final user = UserModel(
        uid: userCredentials!.user!.uid,
        email: userCredentials!.user!.email!,
      );
      await _db.save(Collections.user, user.toJson());
      return user;
    } on DbFailure catch (e) {
      throw ApiFailure(e.message);
    } finally {
      throw ApiFailure(GOOGLE_SIGNIN_FAILED);
    }
  }
}
