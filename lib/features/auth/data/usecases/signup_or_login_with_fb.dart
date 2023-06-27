import 'package:dartz/dartz.dart';
import 'package:we_date/core/models/user_model.dart';
import 'package:we_date/core/utils/classes.dart';
import 'package:we_date/core/utils/errors.dart';
import 'package:we_date/features/auth/data/repository/authentication_repository.dart';

class SignupOrLoginWithFacebook implements Usecase<UserModel, NoParam> {
  final AuthenticationRepository _authenticationRepo;

  SignupOrLoginWithFacebook(this._authenticationRepo);

  @override
  Future<Either<UIError, UserModel>> call(param) async {
    try {
      final user = await _authenticationRepo.signupOrLoginWithFacebook();
      return Right(user);
    } on NetworkFailure catch (e) {
      return Left(UIError(e.message));
    }
  }
}
