import 'dart:convert';

//import 'dart:convert';

//import 'package:freezed_annotation/freezed_annotation.dart';

//part 'user_login.freezed.dart';
//part 'user_login.g.dart';

//@freezed
class UserLogin {
  String email;
  String password;

  UserLogin({
    required this.email,
    required this.password,
  });

  UserLogin copyWith({
    String? email,
    String? password,
  }) {
    return UserLogin(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }

  factory UserLogin.fromMap(Map<String, dynamic> map) {
    return UserLogin(
      email: map['email'],
      password: map['password'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserLogin.fromJson(String source) =>
      UserLogin.fromMap(json.decode(source));

  @override
  String toString() => 'UserLogin(email: $email, password: $password)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserLogin &&
        other.email == email &&
        other.password == password;
  }

  @override
  int get hashCode => email.hashCode ^ password.hashCode;
}
