import 'package:dartz/dartz.dart';
import 'package:we_date/core/models/user_model.dart';
import 'package:we_date/core/utils/classes.dart';
import 'package:we_date/core/utils/errors.dart';
import 'package:we_date/features/auth/data/repository/authentication_repository.dart';

class SignupOrLoginWithGoogle implements Usecase<UserModel, NoParam> {
  final AuthenticationRepository _authenticationRepo;

  SignupOrLoginWithGoogle(this._authenticationRepo);

  @override
  Future<Either<UIError, UserModel>> call(param) async {
    try {
      final user = await _authenticationRepo.signupOrLoginWithGoogle();
      return Right(user);
    } on NetworkFailure catch (e) {
      return Left(UIError(e.message));
    }
  }
}
