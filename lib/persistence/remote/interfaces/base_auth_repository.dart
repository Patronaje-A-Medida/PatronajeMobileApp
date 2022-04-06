import 'package:patronaje_mobile_app/domain/models/auth/user_client_token.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_client_update.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_create.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_login.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_read.dart';

abstract class BaseAuthRepository {
  Future<UserClientToken> signUp(UserCreate userCreate);
  Future<UserClientToken> signIn(UserLogin userLogin);
  Future<UserRead> updateProfile(UserClientUpdate userClientUpdate);
}
