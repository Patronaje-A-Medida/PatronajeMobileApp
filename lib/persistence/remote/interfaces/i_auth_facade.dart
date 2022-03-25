import 'package:dartz/dartz.dart';
import 'package:patronaje_mobile_app/domain/handlers/failures/auth_failure.dart';
import 'package:patronaje_mobile_app/domain/utils/forms/form_inputs.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signUp(
      {required EmailAddress emailAddress, required Password password});

  Future<Either<AuthFailure, Unit>> signIn(
      {required EmailAddress emailAddress, required Password password});
}
