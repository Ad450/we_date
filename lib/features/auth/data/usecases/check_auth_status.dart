import 'package:dartz/dartz.dart';
import 'package:we_date/core/utils/classes.dart';
import 'package:we_date/core/utils/error_messages.dart';
import 'package:we_date/core/utils/errors.dart';

class CheckAuthStatus implements Usecase<bool, NoParam> {
  final String? uid;

  CheckAuthStatus(this.uid);

  @override
  Future<Either<UIError, bool>> call(NoParam param) async {
    if (uid == null) {
      return const Left(UIError(NO_USER));
    }
    return const Right(true);
  }
}
