import 'package:firebase_auth/firebase_auth.dart';
import 'package:location/location.dart';
import 'package:we_date/core/datastore/database_client.dart';
import 'package:we_date/core/di/configure_dependencies.dart';
import 'package:we_date/core/models/profile_model.dart';
import 'package:we_date/core/utils/errors.dart';
import 'package:we_date/core/utils/functions.dart';

abstract class DiscoverRemoteDatasource {
  Future<List<ProfileModel>> fetchDiscoveredProfiles();
}

class DiscoverRemoteDatasourceImpl implements DiscoverRemoteDatasource {
  final DatabaseClient _db;

  DiscoverRemoteDatasourceImpl(this._db);

  @override
  Future<List<ProfileModel>> fetchDiscoveredProfiles() async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      final location = await getLocation(Injector.getIt.get<Location>());
      final preferencesSnapshot = await _db.getByIdentifier(
        Collections.preferences,
        "uid",
        user!.uid,
      );
      final preferences = preferencesSnapshot.data();
      final preferredAge = int.parse(preferences["age"]);
      final preferredHeight = int.parse(preferences["height"]);
      final discoveredProfilesSnapshots = await _db.getDiscoveredProfiles(
        location,
        collection: Collections.profile,
        preferredAge: preferredAge,
        preferredHeight: preferredHeight,
      );
      return discoveredProfilesSnapshots.map((snapshot) => ProfileModel.fromJson(snapshot.data())).toList();
    } on DbFailure catch (e) {
      throw ApiFailure(e.message);
    }
  }
}
