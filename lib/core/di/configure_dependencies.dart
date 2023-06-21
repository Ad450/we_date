import 'package:get_it/get_it.dart';
import 'package:we_date/core/datastore/database_client.dart';
import 'package:we_date/features/auth/data/datasources/remote_datasources/authentication_remote_datasource.dart';
import 'package:we_date/features/auth/data/repository/authentication_repository.dart';
import 'package:we_date/features/auth/data/repository/authentication_repository_impl.dart';
import 'package:we_date/features/auth/data/usecases/signup_or_login_with_fb.dart';
import 'package:we_date/features/auth/data/usecases/signup_or_login_with_google.dart';

class Injector {
  static late GetIt getIt;

  static void _initializeGetIt() {
    getIt = GetIt.instance;
  }

  static void registerDependencies() {
    _initializeGetIt();
    getIt.registerLazySingleton<DatabaseClient>(() => DatabaseClientImpl());
    getIt.registerLazySingleton<AuthenticationRemoteDatasource>(
      () => AuthenticationRemoteDatasourceImpl(getIt.get<DatabaseClient>()),
    );
    getIt.registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(
          getIt.get<AuthenticationRemoteDatasource>()),
    );
    getIt.registerLazySingleton<SignupOrLoginWithGoogle>(
      () => SignupOrLoginWithGoogle(getIt.get<AuthenticationRepository>()),
    );
    getIt.registerLazySingleton<SignupOrLoginWithFacebook>(
      () => SignupOrLoginWithFacebook(getIt.get<AuthenticationRepository>()),
    );
  }
}
