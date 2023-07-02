import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:location/location.dart';
import 'package:we_date/core/datastore/database_client.dart';
import 'package:we_date/features/auth/data/datasources/remote_datasources/authentication_remote_datasource.dart';
import 'package:we_date/features/auth/data/repository/authentication_repository.dart';
import 'package:we_date/features/auth/data/repository/authentication_repository_impl.dart';
import 'package:we_date/features/auth/data/usecases/signup_or_login_with_fb.dart';
import 'package:we_date/features/auth/data/usecases/signup_or_login_with_google.dart';
import 'package:we_date/features/home/discover/data/datasources/remote_datasource/DiscoverRemoteDatasource.dart';
import 'package:we_date/features/home/discover/data/repository/DiscoverRepository.dart';
import 'package:we_date/features/home/discover/data/repository/DiscoverRepositoryImpl.dart';
import 'package:we_date/features/home/discover/data/usecases/fetch_discovered_profiles.dart';
import 'package:we_date/features/home/stories/data/datasource/remote/stories_remote_datasource.dart';
import 'package:we_date/features/home/stories/data/repository/stories_repository.dart';
import 'package:we_date/features/home/stories/data/usecases/get_stories.dart';
import 'package:we_date/features/home/stories/data/usecases/upload_story.dart';
import 'package:we_date/features/profile/data/datasources/remote_datasources/profile_remote_datasource.dart';
import 'package:we_date/features/profile/data/repository/profile_repository.dart';
import 'package:we_date/features/profile/data/repository/profile_repository_impl.dart';
import 'package:we_date/features/profile/data/usecases/update_profile.dart';

class Injector {
  static late GetIt getIt;

  static void _initializeGetIt() {
    getIt = GetIt.instance;
  }

  static void registerDependencies() {
    _initializeGetIt();
    getIt.registerLazySingleton<DatabaseClient>(() => DatabaseClientImpl(FirebaseFirestore.instance));
    getIt.registerLazySingleton<AuthenticationRemoteDatasource>(
          () => AuthenticationRemoteDatasourceImpl(getIt.get<DatabaseClient>()),
    );
    getIt.registerLazySingleton<AuthenticationRepository>(
          () => AuthenticationRepositoryImpl(getIt.get<AuthenticationRemoteDatasource>()),
    );
    getIt.registerLazySingleton<SignupOrLoginWithGoogle>(
          () => SignupOrLoginWithGoogle(getIt.get<AuthenticationRepository>()),
    );
    getIt.registerLazySingleton<SignupOrLoginWithFacebook>(
          () => SignupOrLoginWithFacebook(getIt.get<AuthenticationRepository>()),
    );
    getIt.registerLazySingleton<Location>(() => Location());
    getIt.registerLazySingleton<DiscoverRemoteDatasource>(
          () => DiscoverRemoteDatasourceImpl(getIt.get<DatabaseClient>()),
    );
    getIt.registerLazySingleton<DiscoveryRepository>(
          () => DiscoverRepositoryImpl(getIt.get<DiscoverRemoteDatasource>()),
    );
    getIt.registerLazySingleton<StoriesRemoteDatasource>(
          () => StoriesRemoteDatasourceImpl(getIt.get<DatabaseClient>()),
    );
    getIt.registerLazySingleton<StoriesRepository>(
          () => StoriesRepositoryImpl(getIt.get<StoriesRemoteDatasource>()),
    );
    getIt.registerLazySingleton<ProfileRemoteDatasource>(
          () => ProfileRemoteDatasourceImpl(getIt.get<DatabaseClient>()),
    );
    getIt.registerLazySingleton<ProfileRepository>(
          () => ProfileRepositoryImpl(getIt.get<ProfileRemoteDatasource>()),
    );
    getIt.registerLazySingleton<FetchDiscoveredProfiles>(
          () => FetchDiscoveredProfiles(getIt.get<DiscoveryRepository>()),
    );
    getIt.registerLazySingleton<GetStories>(
          () => GetStories(getIt.get<StoriesRepository>()),
    );
    getIt.registerLazySingleton<UploadStory>(
          () => UploadStory(getIt.get<StoriesRepository>()),
    );
    getIt.registerLazySingleton<UpdateProfile>(
          () => UpdateProfile(getIt.get<ProfileRepository>()),
    );
  }
}
