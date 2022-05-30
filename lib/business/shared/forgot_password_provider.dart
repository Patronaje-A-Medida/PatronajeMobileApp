class ForgotPasswordProvider {
  late String _email = '';

  String get email => _email;

  set email(String value) {
    _email = value;
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
}
