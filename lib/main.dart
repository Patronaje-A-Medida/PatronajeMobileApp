import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:patronaje_mobile_app/domain/models/hive/user_local_data.dart';
import 'package:patronaje_mobile_app/presentation/app_widget.dart';

late Box box;

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserLocalDataAdapter());
  box = await Hive.openBox('localbox');
  UserLocalData? userLocalData = box.get('userlocal');
  if (userLocalData == null) {
    box.put(
      'userlocal',
      UserLocalData(
        id: 0,
        email: '',
        names: '',
        height: 0,
        phone: '',
        token: '',
        expiredSession: DateTime.now().add(const Duration(hours: 5)),
        firstUseApp: true,
        firstTakeMeasure: true,
        userId: '',
        lastNames: '',
      ),
    );
  }
  runApp(const AppWidget());
}
