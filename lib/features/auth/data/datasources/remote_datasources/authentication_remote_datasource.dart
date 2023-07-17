import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:location/location.dart';
import 'package:we_date/core/datastore/database_client.dart';
import 'package:we_date/core/datastore/shared_preferences.dart';
import 'package:we_date/core/di/configure_dependencies.dart';
import 'package:we_date/core/models/profile_model.dart';
import 'package:we_date/core/models/user_model.dart';
import 'package:we_date/core/utils/errors.dart';
import 'package:we_date/core/utils/error_messages.dart';
import 'package:we_date/core/utils/functions.dart';

abstract class AuthenticationRemoteDatasource {
  Future<UserModel> signupOrLoginWithGoogle();

  Future<UserModel> signupOrLoginWithFacebook();

  Future<void> signout();
}

class AuthenticationRemoteDatasourceImpl implements AuthenticationRemoteDatasource {
  final DatabaseClient _db;
  final CustomSharedPreferences customSharedPreferences;

  AuthenticationRemoteDatasourceImpl(this._db, this.customSharedPreferences);

  @override
  Future<UserModel> signupOrLoginWithFacebook() async {
    try {
      if (FirebaseAuth.instance.currentUser?.uid == null) {
        final LoginResult loginResult = await FacebookAuth.instance.login();
        final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);
        final userCredentials = await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);

        final location = await getLocation(Injector.getIt.get<Location>());
        final profile = ProfileModel(uid: userCredentials.user!.uid, location: location?.toJson());
        final user = UserModel(
          uid: userCredentials.user!.uid,
          email: userCredentials.user!.email!,
        );
        await _db.save(Collections.user, user.toJson());
        await _db.save(Collections.profile, profile.toJson());

        return user;
      } else {
        final uid = FirebaseAuth.instance.currentUser?.uid;
        final user = await _db.getByIdentifier(Collections.user, "uid", uid!);
        return UserModel.fromJson(user!.data());
      }
    } on DbFailure catch (e) {
      throw ApiFailure(e.message);
    } catch (e) {
      throw ApiFailure(FACEBOOK_SIGNIN_FAILED);
    }
  }

  @override
  Future<UserModel> signupOrLoginWithGoogle() async {
    try {
      if (FirebaseAuth.instance.currentUser?.uid == null) {
        final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

        final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

        final googleCredentials = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );
        final userCredentials = await FirebaseAuth.instance.signInWithCredential(googleCredentials);
        final location = await getLocation(Injector.getIt.get<Location>());
        final profile = ProfileModel(uid: userCredentials.user!.uid, location: location?.toJson());
        final user = UserModel(
          uid: userCredentials.user!.uid,
          email: userCredentials.user!.email!,
        );

        await _db.save(Collections.profile, profile.toJson());
        await _db.save(Collections.user, user.toJson());

        return user;
      } else {
        final uid = FirebaseAuth.instance.currentUser?.uid;
        final user = await _db.getByIdentifier(Collections.user, "uid", uid!);
        return UserModel.fromJson(user!.data());
      }
    } on DbFailure catch (e) {
      throw ApiFailure(e.message);
    } catch (e) {
      throw ApiFailure(GOOGLE_SIGNIN_FAILED);
    }
  }

  @override
  Future<void> signout() async {
    try {
      final firebase = FirebaseAuth.instance;
      final user = firebase.currentUser;
      final userfromDB = await _db.getByIdentifier(Collections.user, "uid", user!.uid);
      if (userfromDB != null) {
        await _db.deleteDocument(Collections.user, "uid", user!.uid);
        await _db.deleteDocument(Collections.profile, "uid", user!.uid);
        await firebase.signOut();
      }
      return;
    } on DbFailure catch (e) {
      throw ApiFailure(e.toString());
    }
  }
}
