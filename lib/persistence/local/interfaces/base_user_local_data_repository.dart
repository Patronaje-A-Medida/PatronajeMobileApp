import 'package:hive_flutter/hive_flutter.dart';
import 'package:patronaje_mobile_app/domain/models/hive/user_local_data.dart';

abstract class BaseUserLocalDataRepository {
  UserLocalData getUserLocalData();
  Future<bool> saveUserLocalData(UserLocalData userLocalData);
}
