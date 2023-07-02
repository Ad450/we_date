import 'package:flutter/material.dart';
import 'package:we_date/core/utils/state_providers.dart';
import 'package:we_date/features/home/discover/state/discover_bloc.dart';
import 'package:we_date/features/home/discover/state/toggle_discover_details_bloc.dart';
import 'package:we_date/features/onboarding/screens/onboarding.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeDate extends StatelessWidget {
  const WeDate({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [...stateProviders],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WeDate',
        home: Onboarding(),
      ),
    );
  }
}
