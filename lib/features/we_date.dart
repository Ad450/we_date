import 'package:flutter/material.dart';
import 'package:we_date/features/home/discover/state/discover_bloc.dart';
import 'package:we_date/features/onboarding/screens/onboarding.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeDate extends StatelessWidget {
  const WeDate({super.key});

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
