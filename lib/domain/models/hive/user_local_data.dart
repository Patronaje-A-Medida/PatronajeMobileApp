import 'package:hive/hive.dart';

part 'user_local_data.g.dart';

@HiveType(typeId: 1)
class UserLocalData {
  @HiveField(0)
  int id;

  @HiveField(1)
  String email;

  @HiveField(2)
  String names;

  @HiveField(3)
  double height;

  @HiveField(4)
  String phone;

  @HiveField(5)
  String token;

  @HiveField(6)
  DateTime expiredSession;

  @HiveField(7)
  bool firstUseApp;

  @HiveField(8)
  bool firstTakeMeasure;

  UserLocalData({
    required this.id,
    required this.email,
    required this.names,
    required this.height,
    required this.phone,
    required this.token,
    required this.expiredSession,
    required this.firstUseApp,
    required this.firstTakeMeasure,
  });
}
