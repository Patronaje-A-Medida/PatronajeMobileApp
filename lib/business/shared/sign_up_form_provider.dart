import 'package:flutter/cupertino.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_create.dart';

class SignUpFormProvider extends ChangeNotifier {
  late bool _termsAndConditions = false;
  late UserCreate _userCreate = UserCreate(
      email: '',
      password: '',
      nameUser: '',
      lastNameUser: '',
      height: 0,
      phone: '');

  UserCreate get userCreate => _userCreate;

  bool get termsAndConditions => _termsAndConditions;

  set termsAndConditions(bool value) {
    _termsAndConditions = value;
    notifyListeners();
  }

  void buildUserCreate({
    String? email,
    String? password,
    String? nameUser,
    String? lastNameUser,
    String? height,
    String? phone,
  }) {
    double? h;
    if (height != null && height.isNotEmpty) h = double.parse(height);
    _userCreate = _userCreate.copyWith(
      email: email,
      password: password,
      nameUser: nameUser,
      lastNameUser: lastNameUser,
      height: h,
      phone: phone,
    );
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

    const emailRegex = r"""^(?=.*?[a-z])(?=.*?[0-9]).{8,20}$""";

    if (!RegExp(emailRegex).hasMatch(value)) {
      return 'Mínimo 8 caracteres y contener al menos \nuna letra y un número.';
    } else {
      return null;
    }
  }

  String? validateNameUser(String? value) {
    if (value == null || value.isEmpty) return 'El nombre es requerido.';

    if (value.length < 2) {
      return 'Nombre inválido.';
    } else if (value.length > 30) {
      return 'Máximo 30 caracteres.';
    } else {
      return null;
    }
  }

  String? validateLastNameUser(String? value) {
    if (value == null || value.isEmpty) return 'El apellido es requerido.';

    if (value.length < 2) {
      return 'Apellido inválido.';
    } else if (value.length > 30) {
      return 'Máximo 30 caracteres.';
    } else {
      return null;
    }
  }

  String? validatePhone(String? value) {
    if (value == null || value.isEmpty) return 'El teléfono es requerido.';

    if (value.length != 9) {
      return 'Número de teléfono inválido.';
    } else {
      return null;
    }
  }

  String? validateHeight(String? value) {
    if (value == null || value.isEmpty) return 'La estatura es requerido.';

    const heightRegex = r"""^(?!0*[.,]0*$|[.,]0*$|0*$)\d+[,.]?\d{0,2}$""";

    if (!RegExp(heightRegex).hasMatch(value)) {
      return 'Estatura inválida.';
    }

    final valueDouble = double.parse(value);

    if (valueDouble < 1 || valueDouble >= 3.0) {
      return 'Estatura inválida.';
    } else {
      return null;
    }
  }

  String? validateTermsAndConditions() {
    if (!_termsAndConditions) {
      return 'Tienes que aceptar los términos y condiciones de uso.';
    }
    return null;
  }
}
