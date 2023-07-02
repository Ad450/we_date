import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_date/core/di/configure_dependencies.dart';
import 'package:we_date/features/auth/data/usecases/signup_or_login_with_fb.dart';
import 'package:we_date/features/auth/data/usecases/signup_or_login_with_google.dart';
import 'package:we_date/features/auth/state/auth_bloc.dart';
import 'package:we_date/features/home/discover/data/usecases/fetch_discovered_profiles.dart';
import 'package:we_date/features/home/discover/state/discover_bloc.dart';
import 'package:we_date/features/home/discover/state/toggle_discover_details_bloc.dart';
import 'package:we_date/features/home/stories/data/usecases/get_stories.dart';
import 'package:we_date/features/home/stories/data/usecases/upload_story.dart';
import 'package:we_date/features/home/stories/screens/state/stories_bloc.dart';
import 'package:we_date/features/profile/data/usecases/update_profile.dart';
import 'package:we_date/features/profile/screens/state/profile_bloc.dart';

final List<BlocProvider> stateProviders = [
  BlocProvider(create: (_) => ToggleDiscoverDetailsBloc()),
  BlocProvider(
    create: (_) => AuthenticationBloc(
      signupOrLoginWithFacebook: Injector.getIt.get<SignupOrLoginWithFacebook>(),
      signupOrLoginWithGoogle: Injector.getIt.get<SignupOrLoginWithGoogle>(),
    ),
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
];
