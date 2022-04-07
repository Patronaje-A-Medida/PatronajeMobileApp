import 'package:flutter/cupertino.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_client_token.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_read.dart';
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

  void createUser(UserClientToken userClientToken) async {
    final UserLocalData userLocalData = UserLocalData(
      id: userClientToken.userInfo.id,
      email: userClientToken.userInfo.email,
      names: userClientToken.userInfo.nameUser,
      height: userClientToken.userInfo.height,
      phone: userClientToken.userInfo.phone,
      token: userClientToken.userToken.token,
      expiredSession: userClientToken.userToken.expiration,
      firstUseApp: true,
      firstTakeMeasure: true,
      lastNames: userClientToken.userInfo.lastNameUser,
      userId: userClientToken.userInfo.userId,
      imageProfile: userClientToken.userInfo.imageProfile ??
          'https://firebasestorage.googleapis.com/v0/b/pry2021251-pam.appspot.com/o/profiles%2Fclient-default.png?alt=media&token=e859abd2-fb48-477b-9ca0-d446f5acedf5',
    );

    await _userLocalDataRepository.saveUserLocalData(userLocalData);
    notifyListeners();
  }

  void updateUser(UserClientToken userClientToken) async {
    var currentUser = _userLocalDataRepository.getUserLocalData();
    currentUser.id = userClientToken.userInfo.id;
    currentUser.email = userClientToken.userInfo.email;
    currentUser.names = userClientToken.userInfo.nameUser;
    currentUser.lastNames = userClientToken.userInfo.lastNameUser;
    currentUser.userId = userClientToken.userInfo.userId;
    currentUser.height = userClientToken.userInfo.height;
    currentUser.phone = userClientToken.userInfo.phone;
    currentUser.token = userClientToken.userToken.token;
    currentUser.expiredSession = userClientToken.userToken.expiration;
    currentUser.imageProfile = userClientToken.userInfo.imageProfile ??
        'https://firebasestorage.googleapis.com/v0/b/pry2021251-pam.appspot.com/o/profiles%2Fclient-default.png?alt=media&token=e859abd2-fb48-477b-9ca0-d446f5acedf5';

    await _userLocalDataRepository.saveUserLocalData(currentUser);
    notifyListeners();
  }

  void updateUserByUserRead(UserRead userRead) async {
    var currentUser = _userLocalDataRepository.getUserLocalData();
    currentUser.id = userRead.id;
    currentUser.email = userRead.email;
    currentUser.names = userRead.nameUser;
    currentUser.lastNames = userRead.lastNameUser;
    currentUser.userId = userRead.userId;
    currentUser.height = userRead.height;
    currentUser.phone = userRead.phone;
    currentUser.imageProfile = userRead.imageProfile ??
        'https://firebasestorage.googleapis.com/v0/b/pry2021251-pam.appspot.com/o/profiles%2Fclient-default.png?alt=media&token=e859abd2-fb48-477b-9ca0-d446f5acedf5';

    await _userLocalDataRepository.saveUserLocalData(currentUser);
    notifyListeners();
  }
}
