import 'package:flutter/material.dart';
import 'package:we_date/core/di/configure_dependencies.dart';
import 'package:we_date/features/auth/data/usecases/check_auth_status.dart';
import 'package:we_date/features/auth/data/usecases/signup_or_login_with_fb.dart';
import 'package:we_date/features/auth/data/usecases/signup_or_login_with_google.dart';
import 'package:we_date/features/auth/screens/auth_landing_page.dart';
import 'package:we_date/features/auth/state/auth_bloc.dart';
import 'package:we_date/features/home/discover/data/usecases/fetch_discovered_profiles.dart';
import 'package:we_date/features/home/discover/state/discover_bloc.dart';
import 'package:we_date/features/home/home.dart';
import 'package:we_date/features/home/stories/data/usecases/get_stories.dart';
import 'package:we_date/features/home/stories/data/usecases/upload_story.dart';
import 'package:we_date/features/home/stories/screens/state/stories_bloc.dart';
import 'package:we_date/features/onboarding/screens/onboarding.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_date/features/profile/screens/state/profile_bloc.dart';

import 'profile/data/usecases/update_profile.dart';

class WeDate extends StatelessWidget {
  final bool? showAuthPage;
  final bool? isAuthenticated;

  const WeDate({super.key, required this.showAuthPage, required this.isAuthenticated});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AuthenticationBloc(
              signupOrLoginWithFacebook: Injector.getIt.get<SignupOrLoginWithFacebook>(),
              signupOrLoginWithGoogle: Injector.getIt.get<SignupOrLoginWithGoogle>(),
              checkAuthStatus: Injector.getIt.get<CheckAuthStatus>()),
        ),
        BlocProvider(
          create: (_) => DiscoverBloc(
            fetchDiscoveredProfiles: Injector.getIt.get<FetchDiscoveredProfiles>(),
          ),
        ),
        BlocProvider(
          create: (_) => StoriesBloc(
            uploadStory: Injector.getIt.get<UploadStory>(),
            getStories: Injector.getIt.get<GetStories>(),
          ),
        ),
        BlocProvider(
          create: (_) => ProfileBloc(
            updateProfile: Injector.getIt.get<UpdateProfile>(),
          ),
        ),
      ],
      child: StartWeDate(showAuthPage: showAuthPage, isAuthenticated: isAuthenticated),
    );
  }
}

class StartWeDate extends StatefulWidget {
  final bool? showAuthPage;
  final bool? isAuthenticated;

  const StartWeDate({super.key, required this.showAuthPage, required this.isAuthenticated});

  @override
  State<StartWeDate> createState() => _StartWeDateState();
}

class _StartWeDateState extends State<StartWeDate> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WeDate',
      home: widget.isAuthenticated != null && widget.isAuthenticated!
          ? const HomeScreen()
          : widget.showAuthPage != null
              ? const AuthLandingPage()
              : const Onboarding(),
    );
  }
}
