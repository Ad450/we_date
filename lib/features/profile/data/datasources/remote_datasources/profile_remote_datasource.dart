import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:we_date/core/datastore/database_client.dart';
import 'package:we_date/core/utils/errors.dart';
import 'package:we_date/core/utils/strings.dart';

abstract class ProfileRemoteDatasource {
  Future<void> updateProfile({
    required String gender,
    String? firstName,
    String? lastName,
    String? profileImageURL,
  });
}

class ProfileRemoteDatasourceImpl implements ProfileRemoteDatasource {
  final DatabaseClient _db;

  ProfileRemoteDatasourceImpl(this._db);

  @override
  Future<void> updateProfile({
    required String gender,
    String? firstName,
    String? lastName,
    String? profileImageURL,
  }) async {
    try {
      final uid = FirebaseAuth.instance.currentUser!.uid;
      await _db.updateByUniqueIdentifier(
        Collections.profile,
        identifierValue: uid,
        identifierkey: "uid",
        data: {
          "gender": gender,
          "firstName": firstName,
          "lastName": lastName,
          "profileImage": profileImageURL,
        },
      );
    } on DbFailure catch (e) {
      throw ApiFailure(e.message);
    } catch (e) {
      throw ApiFailure(UPDATE_PROFILE_FAILURE);
    }
  }
}
