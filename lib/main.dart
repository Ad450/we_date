import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_date/core/datastore/database_client.dart';
import 'package:we_date/core/di/configure_dependencies.dart';
import 'package:we_date/core/utils/functions.dart';
import 'package:we_date/features/home/discover/state/discover_bloc.dart';
import 'package:we_date/features/onboarding/screens/onboarding.dart';
import 'package:location/location.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Injector.registerDependencies();


  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await updateProfileOnLocationChange(
    Injector.getIt.get<Location>(),
    Injector.getIt.get<DatabaseClient>(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => DiscoverBloc())],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: Onboarding(),
      ),
    );
  }
}
