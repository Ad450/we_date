import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:we_date/core/models/location_model.dart';
import 'package:we_date/core/utils/errors.dart';

import '../utils/error_messages.dart';

abstract class DatabaseClient {
  Future<String> save<T extends Collections>(T collection, dynamic data);

  Future<QueryDocumentSnapshot<Map<String, dynamic>>> getByIdentifier<T extends Collections>(
    T collection,
    String identifierkey,
    String identifierValue,
  );

  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> get<T extends Collections>(T collection);

  Future<void> updateByUniqueIdentifier<T extends Collections>(
    T collection, {
    required String identifierValue,
    required String identifierkey,
    dynamic data,
  });

  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> findByMultipleQueryParameters<T extends Collections>(
    Map<String, dynamic> queryParams,
    T collection,
  );

  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> getDiscoveredProfiles<T extends Collections>(
    LocationModel? location, {
    required T collection,
    required preferredAge,
    required preferredHeight,
  });
}

enum Collections { user, profile, story, preferences }

class DatabaseClientImpl implements DatabaseClient {
  final FirebaseFirestore firestore;

  DatabaseClientImpl(this.firestore);

  @override
  Future<String> save<T extends Collections>(T collection, data) async {
    try {
      return await firestore.collection(collection.name).add(data).then((value) => value.id);
    } on Error catch (e) {
      throw DbFailure(e.toString());
    }
  }

  @override
  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> get<T extends Collections>(T collection) async {
    try {
      final result = await firestore.collection(collection.name).get().then((snapshots) => snapshots.docs);
      return result;
    } on Error catch (e) {
      throw DbFailure(e.toString());
    }
  }

  @override
  Future<QueryDocumentSnapshot<Map<String, dynamic>>> getByIdentifier<T extends Collections>(
    T collection,
    String identifierkey,
    String identifierValue,
  ) async {
    try {
      final collectionRef = await firestore.collection(collection.name);
      return await collectionRef
          .where(identifierkey, isEqualTo: identifierValue)
          .get()
          .then((snapshot) => snapshot.docs.first);
    } catch (e) {
      throw DbFailure(e.toString());
    }
  }

  @override
  Future<void> updateByUniqueIdentifier<T extends Collections>(
    T collection, {
    required String identifierValue,
    required String identifierkey,
    dynamic data,
  }) async {
    try {
      final collectionRef = await firestore.collection(collection.name);
      final docs =
          await collectionRef.where(identifierkey, isEqualTo: identifierValue).get().then((snapshot) => snapshot.docs);
      final doc = docs.first;
      if (!doc.exists) {
        throw Exception(OBJECT_DOES_NOT_EXISTS);
      }
      await collectionRef.doc(doc.id).update(data);
    } catch (e) {
      throw DbFailure(e.toString());
    }
  }

  @override
  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> findByMultipleQueryParameters<T extends Collections>(
    Map<String, dynamic> queryParams,
    T collection,
  ) async {
    try {
      final collectionRef = await firestore.collection(collection.name);
      late Query<Map<String, dynamic>> query;

      queryParams.forEach((key, value) async {
        query = collectionRef.where(key, isEqualTo: value);
      });
      final docs = await query.get().then((snapshot) => snapshot.docs);
      return docs;
    } catch (e) {
      throw DbFailure(e.toString());
    }
  }

  /// This function returns all profiles withing the range
  /// 500meters around a user. In this case 0.007
  @override
  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> getDiscoveredProfiles<T extends Collections>(
    LocationModel? location, {
    required T collection,
    required preferredAge,
    required preferredHeight,
  }) async {
    if (location == null || location.lat == null || location.long == null) {
      throw DbFailure(LOCATION_CANT_BE_NULL);
    }

    if (preferredHeight == null || preferredAge == null) {
      throw DbFailure(PREFERED_AGE_REQUIRED);
    }

    try {
      final collectionRef = await firestore.collection(collection.name); // Collection is profile always
      const threshold = 0.007;
      final query = await collectionRef
          .where('location.latitude', isGreaterThanOrEqualTo: location.lat)
          .where('location.latitude', isLessThanOrEqualTo: location.lat! + threshold)
          .where('location.longitude', isGreaterThanOrEqualTo: location.long)
          .where('location.longitude', isLessThanOrEqualTo: location.long! + threshold)
          .where("height", isLessThanOrEqualTo: int.parse(preferredHeight + 1))
          .where("age", isLessThanOrEqualTo: int.parse(preferredAge + 2));
      return query.get().then((snapshot) => snapshot.docs);
    } catch (e) {
      throw DbFailure(e.toString());
    }
  }
}
