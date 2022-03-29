import 'package:flutter/foundation.dart';
import 'package:patronaje_mobile_app/domain/handlers/exceptions/general_exception.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_client_token.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_create.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_login.dart';

import 'package:patronaje_mobile_app/persistence/remote/implements/auth_repository.dart';

class AuthProvider extends ChangeNotifier {
  final AuthRepository _authRepository;

  AuthProvider(this._authRepository);

  late bool _isLoading = false;
  late String _errorMessage = '';

  bool get isLoading => _isLoading;

  String get errorMessage => _errorMessage;

  Future<UserClientToken> signUp(UserCreate userCreate) async {
    try {
      _isLoading = true;
      notifyListeners();
      final result = await _authRepository.signUp(userCreate);
      _isLoading = false;
      notifyListeners();
      return result;
    } on GeneralException catch (err) {
      _isLoading = false;
      _errorMessage = err.message;
      notifyListeners();
      rethrow;
    }
  }

  Future<UserClientToken> signIn(UserLogin userLogin) async {
    try {
      _isLoading = true;
      notifyListeners();
      final result = await _authRepository.signIn(userLogin);
      _isLoading = false;
      notifyListeners();
      return result;
    } on GeneralException catch (err) {
      _isLoading = false;
      _errorMessage = err.message;
      notifyListeners();
      rethrow;
    }
  }
}
