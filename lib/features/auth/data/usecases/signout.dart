import 'package:dartz/dartz.dart';
import 'package:we_date/core/utils/classes.dart';
import 'package:we_date/core/utils/errors.dart';
import 'package:we_date/features/auth/data/repository/authentication_repository.dart';

class Signout implements Usecase<VoidType, NoParam> {
  final AuthenticationRepository _authenticationRepository;

  Signout(this._authenticationRepository);

  @override
  Future<Either<UIError, VoidType>> call(NoParam param) async {
    try {
      await _authenticationRepository.signout();
      return const Right(VoidType());
    } on NetworkFailure catch (e) {
      return Left(UIError(e.message));
    }
  }
}
