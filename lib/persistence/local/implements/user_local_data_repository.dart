import 'package:hive_flutter/hive_flutter.dart';
import 'package:patronaje_mobile_app/domain/models/hive/user_local_data.dart';
import 'package:patronaje_mobile_app/persistence/local/interfaces/base_user_local_data_repository.dart';

class UserLocalDataRepository implements BaseUserLocalDataRepository {
  final Box _box = Hive.box('localbox');

  @override
  UserLocalData getUserLocalData() {
    final UserLocalData userLocalData = _box.get('userlocal');
    return userLocalData;
  }

  @override
  Future<bool> saveUserLocalData(UserLocalData userLocalData) async {
    try {
      await _box.put('userlocal', userLocalData);
      return true;
    } catch (err) {
      return false;
    }
  }

  Future<void> updateUseApp(bool value) async {
    var currentUSer = getUserLocalData();
    currentUSer.firstUseApp = value;
    await saveUserLocalData(currentUSer);
  }

  Future<void> updateTakeMeasure(bool value) async {
    var currentUSer = getUserLocalData();
    currentUSer.firstTakeMeasure = value;
    await saveUserLocalData(currentUSer);
  }
}
