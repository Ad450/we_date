import 'package:we_date/core/models/user_model.dart';
import 'package:we_date/core/utils/functions.dart';
import 'package:we_date/features/auth/data/datasources/remote_datasources/authentication_remote_datasource.dart';
import 'package:we_date/features/auth/data/repository/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationRemoteDatasource _authenticationRemoteDatasource;

  const AuthenticationRepositoryImpl(this._authenticationRemoteDatasource);

  @override
  Future<UserModel> signupOrLoginWithFacebook() async {
    return await guardedApiCall<UserModel>(
      () => _authenticationRemoteDatasource.signupOrLoginWithFacebook(),
    );
  }

  @override
  Future<UserModel> signupOrLoginWithGoogle() async {
    return await guardedApiCall<UserModel>(
      () => _authenticationRemoteDatasource.signupOrLoginWithGoogle(),
    );
  }
}
