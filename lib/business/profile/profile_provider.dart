import 'package:flutter/foundation.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_client_update.dart';
import 'package:patronaje_mobile_app/persistence/local/implements/user_local_data_repository.dart';

class ProfileProvider extends ChangeNotifier {
  final UserLocalDataRepository _userLocalDataRepository;

  ProfileProvider(this._userLocalDataRepository);

  bool _editMode = false;
  late UserClientUpdate _userUpdate = UserClientUpdate(
    id: 0,
    nameUser: '',
    lastNameUser: '',
    height: 0,
    phone: '',
  );

  bool get editMode => _editMode;
  UserClientUpdate get userUpdate => _userUpdate;

  set editMode(bool value) {
    _editMode = value;
    notifyListeners();
  }

  void buildUserUpdate({
    int? id,
    String? nameUser,
    String? lastNameUser,
    String? height,
    String? phone,
  }) {
    double? h;
    if (height != null && height.isNotEmpty) h = double.parse(height);
    _userUpdate = _userUpdate.copyWith(
      id: id,
      nameUser: nameUser,
      lastNameUser: lastNameUser,
      height: h,
      phone: phone,
    );
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
}
