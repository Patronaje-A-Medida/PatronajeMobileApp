import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login.freezed.dart';
part 'user_login.g.dart';

@freezed
class UserLogin with _$UserLogin {
  const UserLogin._();

  const factory UserLogin({
    required String email,
    required String password,
  }) = _UserLogin;

  factory UserLogin.fromJson(Map<String, dynamic> json) =>
      _$UserLoginFromJson(json);
}
