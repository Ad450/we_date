import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:we_date/core/datastore/database_client.dart';
import 'package:we_date/core/di/configure_dependencies.dart';
import 'package:we_date/core/utils/constants.dart';
import 'package:we_date/core/utils/functions.dart';

import 'package:location/location.dart';
import 'package:we_date/features/we_date.dart';

import 'firebase_options.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    Injector.registerDependencies();
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    await updateProfileOnLocationChange(
      Injector.getIt.get<Location>(),
      Injector.getIt.get<DatabaseClient>(),
    );
  } catch (e) {
    logger.e(e);
  }

  runApp(const WeDate());
}
