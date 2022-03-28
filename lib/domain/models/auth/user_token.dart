import 'dart:convert';

class UserToken {
  String token;
  DateTime expiration;

  UserToken({
    required this.token,
    required this.expiration,
  });

  UserToken copyWith({
    String? token,
    DateTime? expiration,
  }) {
    return UserToken(
      token: token ?? this.token,
      expiration: expiration ?? this.expiration,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'token': token,
      'expiration': expiration,
    };
  }

  factory UserToken.fromMap(Map<String, dynamic> map) {
    return UserToken(
      token: map['token'],
      expiration: DateTime.parse(map['expiration'].toString()),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserToken.fromJson(String source) =>
      UserToken.fromMap(json.decode(source));

  @override
  String toString() => 'UserToken(token: $token, expiration: $expiration)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserToken &&
        other.token == token &&
        other.expiration == expiration;
  }

  @override
  int get hashCode => token.hashCode ^ expiration.hashCode;
}
