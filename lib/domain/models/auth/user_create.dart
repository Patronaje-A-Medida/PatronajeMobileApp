import 'dart:convert';

class UserCreate {
  String email;
  String password;
  String nameUser;
  String lastNameUser;
  double height;
  String phone;

  UserCreate({
    required this.email,
    required this.password,
    required this.nameUser,
    required this.lastNameUser,
    required this.height,
    required this.phone,
  });

  UserCreate copyWith({
    String? email,
    String? password,
    String? nameUser,
    String? lastNameUser,
    double? height,
    String? phone,
  }) {
    return UserCreate(
      email: email ?? this.email,
      password: password ?? this.password,
      nameUser: nameUser ?? this.nameUser,
      lastNameUser: lastNameUser ?? this.lastNameUser,
      height: height ?? this.height,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'nameUser': nameUser,
      'lastNameUser': lastNameUser,
      'height': height,
      'phone': phone,
    };
  }

  factory UserCreate.fromMap(Map<String, dynamic> map) {
    return UserCreate(
      email: map['email'],
      password: map['password'],
      nameUser: map['nameUser'],
      lastNameUser: map['lastNameUser'],
      height: map['height'],
      phone: map['phone'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserCreate.fromJson(String source) =>
      UserCreate.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserCreate(email: $email, password: $password, nameUser: $nameUser, lastNameUser: $lastNameUser, height: $height, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserCreate &&
        other.email == email &&
        other.password == password &&
        other.nameUser == nameUser &&
        other.lastNameUser == lastNameUser &&
        other.height == height &&
        other.phone == phone;
  }

  @override
  int get hashCode {
    return email.hashCode ^
        password.hashCode ^
        nameUser.hashCode ^
        lastNameUser.hashCode ^
        height.hashCode ^
        phone.hashCode;
  }
}
