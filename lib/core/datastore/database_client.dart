import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:we_date/core/utils/errors.dart';

import '../utils/error_messages.dart';

abstract class DatabaseClient {
  Future<String> save<T extends Collections>(T collection, dynamic data);

  Future<QueryDocumentSnapshot<Map<String, dynamic>>>
      getByIdentifier<T extends Collections>(
    T collection,
    String identifierkey,
    String identifierValue,
  );

  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>>
      get<T extends Collections>(T collection);

  Future<void> updateByUniqueIdentifier<T extends Collections>(
    T collection, {
    required String identifierValue,
    required String identifierkey,
    dynamic data,
  });
}

enum Collections { user, profile, story }

class DatabaseClientImpl implements DatabaseClient {
  late FirebaseFirestore firestore;

  DatabaseClientImpl() {
    firestore = FirebaseFirestore.instance;
  }

  @override
  Future<String> save<T extends Collections>(T collection, data) async {
    try {
      return await firestore
          .collection(collection.name)
          .add(data)
          .then((value) => value.id);
    } on Error catch (e) {
      throw DbFailure(e.toString());
    }
  }

  @override
  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>>
      get<T extends Collections>(T collection) async {
    try {
      final result = await firestore
          .collection(collection.name)
          .get()
          .then((snapshots) => snapshots.docs);
      return result;
    } on Error catch (e) {
      throw DbFailure(e.toString());
    }
  }

  @override
  Future<QueryDocumentSnapshot<Map<String, dynamic>>>
      getByIdentifier<T extends Collections>(
          T collection, String identifierkey, String identifierValue) async {
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
      final docs = await collectionRef
          .where(identifierkey, isEqualTo: identifierValue)
          .get()
          .then((snapshot) => snapshot.docs);
      final doc = docs.first;
      if (!doc.exists) {
        throw Exception(OBJECT_DOES_NOT_EXISTS);
      }
      await collectionRef.doc(doc.id).update(data);
    } catch (e) {
      throw DbFailure(e.toString());
    }
  }
}
