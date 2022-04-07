import 'dart:convert';

class UserClientUpdate {
  final int id;
  final String userId = '';
  final String nameUser;
  final String lastNameUser;
  final double height;
  final String phone;

  UserClientUpdate({
    required this.id,
    required this.nameUser,
    required this.lastNameUser,
    required this.height,
    required this.phone,
  });

  UserClientUpdate copyWith({
    int? id,
    String? nameUser,
    String? lastNameUser,
    double? height,
    String? phone,
  }) {
    return UserClientUpdate(
      id: id ?? this.id,
      nameUser: nameUser ?? this.nameUser,
      lastNameUser: lastNameUser ?? this.lastNameUser,
      height: height ?? this.height,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'nameUser': nameUser,
      'lastNameUser': lastNameUser,
      'height': height,
      'phone': phone,
    };
  }

  factory UserClientUpdate.fromMap(Map<String, dynamic> map) {
    return UserClientUpdate(
      id: map['id'],
      nameUser: map['nameUser'],
      lastNameUser: map['lastNameUser'],
      height: map['height'],
      phone: map['phone'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserClientUpdate.fromJson(String source) =>
      UserClientUpdate.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserClientUpdate(id: $id, nameUser: $nameUser, lastNameUser: $lastNameUser, height: $height, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserClientUpdate &&
        other.id == id &&
        other.nameUser == nameUser &&
        other.lastNameUser == lastNameUser &&
        other.height == height &&
        other.phone == phone;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nameUser.hashCode ^
        lastNameUser.hashCode ^
        height.hashCode ^
        phone.hashCode;
  }
}
