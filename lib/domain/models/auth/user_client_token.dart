import 'dart:convert';

import 'package:patronaje_mobile_app/domain/models/auth/user_read.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_token.dart';

class UserClientToken {
  UserRead userInfo;
  UserToken userToken;
  UserClientToken({
    required this.userInfo,
    required this.userToken,
  });

  UserClientToken copyWith({
    UserRead? userInfo,
    UserToken? userToken,
  }) {
    return UserClientToken(
      userInfo: userInfo ?? this.userInfo,
      userToken: userToken ?? this.userToken,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userInfo': userInfo.toMap(),
      'userToken': userToken.toMap(),
    };
  }

  factory UserClientToken.fromMap(Map<String, dynamic> map) {
    return UserClientToken(
      userInfo: UserRead.fromMap(map['userInfo']),
      userToken: UserToken.fromMap(map['userToken']),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserClientToken.fromJson(String source) =>
      UserClientToken.fromMap(json.decode(source));

  @override
  String toString() =>
      'UserClientToken(userInfo: $userInfo, userToken: $userToken)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserClientToken &&
        other.userInfo == userInfo &&
        other.userToken == userToken;
  }

  @override
  int get hashCode => userInfo.hashCode ^ userToken.hashCode;
}
