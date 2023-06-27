import 'package:dartz/dartz.dart';
import 'package:we_date/core/utils/errors.dart';

/// An Interface that must be implemented by all usecases
/// All subclasses will be callable like functions through
/// the implemented [call] method
abstract class Usecase<R, P> {
  Future<Either<UIError, R>> call(P param);
}

/// VoidType is the returned object for a usecase call
/// that returns void
class VoidType {
  const VoidType();
}

/// NoParam is the parameter of a usecase call that
/// that accepts no argument
class NoParam {
  const NoParam();
}
