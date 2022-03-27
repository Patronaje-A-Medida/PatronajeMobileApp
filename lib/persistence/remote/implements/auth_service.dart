import 'package:injectable/injectable.dart';
import 'package:patronaje_mobile_app/domain/utils/forms/form_inputs.dart';
import 'package:patronaje_mobile_app/domain/handlers/failures/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:patronaje_mobile_app/persistence/remote/interfaces/i_auth_facade.dart';

@LazySingleton(as: IAuthFacade)
class AuthService implements IAuthFacade {
  AuthService();

  @override
  Future<Either<AuthFailure, Unit>> signIn(
      {required EmailAddress emailAddress, required Password password}) async {
    final email = emailAddress.getOrCrash();
    final pwd = password.getOrCrash();

    try {
      // http.post
      print('sign in service');
      return right(unit);
    } catch (e) {
      // if e.code -> code.server_error ||code.invalid_email
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUp({
    required NamesUser name,
    required NamesUser lastName,
    required EmailAddress emailAddress,
    required Password password,
    required Phone phone,
    required Height height,
  }) async {
    final email = emailAddress.getOrCrash();
    final pwd = password.getOrCrash();
    final hght = height.getOrCrash();

    try {
      // http.post
      print('sign up service');
      return right(unit);
    } catch (e) {
      // if e.code -> code.server_error ||code.invalid_email
      return left(const AuthFailure.serverError());
    }
  }
}
