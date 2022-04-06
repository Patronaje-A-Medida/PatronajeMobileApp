import 'dart:convert';

class UserRead {
  int id;
  String userId;
  String email;
  String nameUser;
  String lastNameUser;
  double height;
  String phone;
  String role;
  String? imageProfile;

  UserRead({
    required this.id,
    required this.userId,
    required this.email,
    required this.nameUser,
    required this.lastNameUser,
    required this.height,
    required this.phone,
    required this.role,
    this.imageProfile,
  });

  UserRead copyWith({
    int? id,
    String? userId,
    String? email,
    String? nameUser,
    String? lastNameUser,
    double? height,
    String? phone,
    String? role,
    String? imageProfile,
  }) {
    return UserRead(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      email: email ?? this.email,
      nameUser: nameUser ?? this.nameUser,
      lastNameUser: lastNameUser ?? this.lastNameUser,
      height: height ?? this.height,
      phone: phone ?? this.phone,
      role: role ?? this.role,
      imageProfile: imageProfile ?? this.imageProfile,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'email': email,
      'nameUser': nameUser,
      'lastNameUser': lastNameUser,
      'height': height,
      'phone': phone,
      'role': role,
      'imageProfile': imageProfile,
    };
  }

  factory UserRead.fromMap(Map<String, dynamic> map) {
    return UserRead(
      id: map['id'],
      userId: map['userId'],
      email: map['email'],
      nameUser: map['nameUser'],
      lastNameUser: map['lastNameUser'],
      height: map['height'],
      phone: map['phone'],
      role: map['role'],
      imageProfile: map['imageProfile'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserRead.fromJson(String source) =>
      UserRead.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserRead(id: $id, userId: $userId, email: $email, nameUser: $nameUser, lastNameUser: $lastNameUser, height: $height, phone: $phone, role: $role, imageProfile: $imageProfile)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserRead &&
        other.id == id &&
        other.userId == userId &&
        other.email == email &&
        other.nameUser == nameUser &&
        other.lastNameUser == lastNameUser &&
        other.height == height &&
        other.phone == phone &&
        other.role == role &&
        other.imageProfile == imageProfile;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        userId.hashCode ^
        email.hashCode ^
        nameUser.hashCode ^
        lastNameUser.hashCode ^
        height.hashCode ^
        phone.hashCode ^
        role.hashCode ^
        imageProfile.hashCode;
  }
}
