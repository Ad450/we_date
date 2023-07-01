import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:we_date/core/datastore/database_client.dart';
import 'package:we_date/core/models/location_model.dart';
import 'package:we_date/core/models/profile_model.dart';
import 'package:we_date/core/utils/constants.dart';
import 'package:we_date/core/utils/errors.dart';
import 'package:we_date/core/utils/error_messages.dart';
import 'dart:math' as math;

double getVisibleScreenWidth(BuildContext context) {
  final MediaQueryData mediaQueryData = MediaQuery.of(context);
  final double screenWidth = mediaQueryData.size.width;
  final EdgeInsets padding = mediaQueryData.padding;
  final double visibleScreenWidth = screenWidth - padding.left - padding.right;
  return visibleScreenWidth;
}

Future<T> guardedApiCall<T>(Function func) async {
  try {
    return await func() as T;
  } on ApiFailure catch (e) {
    throw NetworkFailure(e.message);
  } finally {
    throw NetworkFailure(GENERIC_NETWORK_FAILURE);
  }
}

Future<bool> isLocationServiceEnabled(Location location) async {
  bool serviceEnabled = await location.serviceEnabled();
  if (!serviceEnabled) {
    serviceEnabled = await location.requestService();
    if (!serviceEnabled) {
      return false;
    }
    return false;
  } else {
    return true;
  }
}

Future<bool> hasPermission(Location location) async {
  PermissionStatus permission;
  bool serviceEnabled = await isLocationServiceEnabled(location);
  if (!serviceEnabled) return false;
  PermissionStatus permissionStatus = await location.hasPermission();
  if (permissionStatus != PermissionStatus.granted) {
    permission = await location.requestPermission();
    if (permission != PermissionStatus.granted) {
      return false;
    }
  }
  return true;
}

Future<LocationModel?> getLocation(Location location) async {
  final permissionGranted = await hasPermission(location);
  if (!permissionGranted) {
    return null;
  }
  final userLocation = await location.getLocation();
  return LocationModel(
    lat: userLocation.latitude,
    long: userLocation.longitude,
  );
}

Future<void> updateProfileOnLocationChange(
  Location location,
  DatabaseClient db,
) async {
  final permissionGranted = await hasPermission(location);
  if (!permissionGranted) {
    return;
  }

  final user = FirebaseAuth.instance.currentUser;
  if (user == null) {
    return;
  }

  final doc = await db.getByIdentifier(Collections.profile, "uid", user.uid);
  final profile = ProfileModel.fromJson(doc.data());

  location.onLocationChanged.listen((event) {
    if (profile.location != null && profile.location != null) {
      if (event.latitude != null && event.longitude != null) {
        final distance = calculateDistance(
          oldLat: profile.location!.lat!,
          oldLong: profile.location!.long!,
          newLat: event.latitude!,
          newLong: event.longitude!,
        );
        if (distance > distanceChangeThreshold) {
          profile.copyWith(
            location: LocationModel(lat: event.latitude!, long: event.longitude!),
          );
          db.updateByUniqueIdentifier(Collections.profile,
              identifierValue: user.uid, identifierkey: "uid", data: profile);
        }
      }
    }
  });
}

double calculateDistance({
  required double? oldLat,
  required double? oldLong,
  required double? newLat,
  required double? newLong,
}) {
  if (oldLat == null || oldLong == null || newLat == null || newLong == null) {
    throw ApiFailure(ENABLE_LOCATION_SERVICE);
  }

  const p = 0.017453292519943295; // math.pi / 180
  const c = math.cos;
  final a = 0.5 - c((newLat - oldLat) * p) / 2 + c(oldLat * p) * c(newLat * p) * (1 - c((newLong - oldLong) * p)) / 2;

  return 12742 * math.asin(math.sqrt(a)); // 2 * R; R = 6371 km
}
