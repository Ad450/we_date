import 'package:flutter/material.dart';
import 'package:we_date/core/datastore/shared_preferences.dart';
import 'package:we_date/core/di/configure_dependencies.dart';
import 'package:we_date/core/utils/constants.dart';
import 'package:we_date/core/utils/state_providers.dart';
import 'package:we_date/features/auth/screens/auth_landing_page.dart';
import 'package:we_date/features/auth/state/auth_bloc.dart';
import 'package:we_date/features/auth/state/auth_state.dart';
import 'package:we_date/features/home/home.dart';
import 'package:we_date/features/onboarding/screens/onboarding.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeDate extends StatelessWidget {
  final bool? showAuthPage;
  final bool? isAuthenticated;

  const WeDate({super.key, required this.showAuthPage, required this.isAuthenticated});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        toggleDiscoverDetailsBloc,
        authBloc,
        storiesBloc,
        profileBloc,
        discoverBloc,
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WeDate',
        home: StartWeDate(showAuthPage: showAuthPage, isAuthenticated: isAuthenticated),
      ),
    );
  }
}

class StartWeDate extends StatelessWidget {
  final bool? showAuthPage;
  final bool? isAuthenticated;

  const StartWeDate({super.key, required this.showAuthPage, required this.isAuthenticated});

  // @override
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthState>(
        buildWhen: (_, state) => state.maybeMap(
              orElse: () => false,
              unAuthenticated: (_) => true,
            ),
        builder: (_, state) {
          if (showAuthPage != null) {
            return const AuthLandingPage();
          }
          if (showAuthPage == null) {
            return const Onboarding();
          }
          return const HomeScreen();
        });
    // isAuthenticated != null && isAuthenticated!
    //   ? const HomeScreen()
    //   : showAuthPage != null
    //       ? const AuthLandingPage()
    //       : const Onboarding();
  }
}
