import 'package:patronaje_mobile_app/domain/models/auth/user_login.dart';

class SignInFormProvider {
  late UserLogin _userLogin = UserLogin(email: '', password: '');

  UserLogin get userLogin => _userLogin;

  void buildUserLogin({String? email, String? password}) {
    _userLogin = _userLogin.copyWith(email: email, password: password);
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'El correo es requerido.';

    const emailRegex =
        r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

    if (!RegExp(emailRegex).hasMatch(value)) {
      return 'Formato de correo inválido.';
    } else {
      return null;
    }
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) return 'La contraseña es requerida.';
    return null;
  }
}
