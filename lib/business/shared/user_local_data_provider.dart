import 'package:flutter/cupertino.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_client_token.dart';
import 'package:patronaje_mobile_app/domain/models/hive/user_local_data.dart';
import 'package:patronaje_mobile_app/persistence/local/implements/user_local_data_repository.dart';

class UserLocalDataProvider extends ChangeNotifier {
  final UserLocalDataRepository _userLocalDataRepository;

  UserLocalData get userData {
    return _userLocalDataRepository.getUserLocalData();
  }

  bool get firstUseApp {
    return userData.firstUseApp;
  }

  bool get firstTakeMeasure {
    return userData.firstTakeMeasure;
  }

  set firstUseApp(bool value) {
    _userLocalDataRepository.updateUseApp(value);
  }

  set firstTakeMeasure(bool value) {
    _userLocalDataRepository.updateTakeMeasure(value);
  }

  UserLocalDataProvider(this._userLocalDataRepository);

  createUser(UserClientToken userClientToken) async {
    final UserLocalData userLocalData = UserLocalData(
      id: userClientToken.userInfo.id,
      email: userClientToken.userInfo.email,
      names:
          '${userClientToken.userInfo.nameUser} ${userClientToken.userInfo.lastNameUser}',
      height: userClientToken.userInfo.height,
      phone: userClientToken.userInfo.phone,
      token: userClientToken.userToken.token,
      expiredSession: userClientToken.userToken.expiration,
      firstUseApp: true,
      firstTakeMeasure: true,
    );

    await _userLocalDataRepository.saveUserLocalData(userLocalData);
  }

  updateUser(UserClientToken userClientToken) async {
    var currentUser = _userLocalDataRepository.getUserLocalData();
    currentUser.id = userClientToken.userInfo.id;
    currentUser.email = userClientToken.userInfo.email;
    currentUser.names = userClientToken.userInfo.nameUser;
    currentUser.height = userClientToken.userInfo.height;
    currentUser.phone = userClientToken.userInfo.phone;
    currentUser.token = userClientToken.userToken.token;
    currentUser.expiredSession = userClientToken.userToken.expiration;

    await _userLocalDataRepository.saveUserLocalData(currentUser);
  }
}
