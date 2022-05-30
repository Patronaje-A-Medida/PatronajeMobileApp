import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/auth/auth_provider.dart';
import 'package:patronaje_mobile_app/business/shared/forgot_password_provider.dart';
import 'package:patronaje_mobile_app/domain/handlers/exceptions/general_exception.dart';
import 'package:patronaje_mobile_app/domain/utils/enums/general_enums.dart';
import 'package:patronaje_mobile_app/presentation/shared/app_filled_button.dart';
import 'package:patronaje_mobile_app/presentation/shared/custom_snackbar.dart';
import 'package:patronaje_mobile_app/presentation/shared/loading_primary_button.dart';
import 'package:provider/provider.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final forgotPwdProvider = Provider.of<ForgotPasswordProvider>(context);
    final authProvider = Provider.of<AuthProvider>(context);

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Recuperar credenciales'),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 18,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0,
        ),
        body: SafeArea(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(24),
            width: double.infinity,
            //child: const SignInForm(),
            child: Column(children: [
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                      labelText: 'Correo',
                      labelStyle: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    autocorrect: false,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) => forgotPwdProvider.email = value,
                    validator: (value) =>
                        forgotPwdProvider.validateEmail(value),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              authProvider.isLoading
                  ? const LoadingPrimaryButton(minimunSize: Size.fromHeight(36))
                  : AppFilledButton(
                      text: 'Cambiar contraseña',
                      minimunSize: const Size.fromHeight(36),
                      onPressed: () async {
                        FocusManager.instance.primaryFocus?.unfocus();

                        if (!_formKey.currentState!.validate()) return;

                        try {
                          final result = await authProvider
                              .resetPassword(forgotPwdProvider.email);
                          if (!result) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              makeSnackBar(
                                type: AlertType.error,
                                message:
                                    'No se pudo restablecer las credenciales.',
                              ),
                            );
                            return;
                          }
                          ScaffoldMessenger.of(context).showSnackBar(
                            makeSnackBar(
                              type: AlertType.success,
                              message:
                                  'Se envió un correo con las credenciales restablecidas.',
                            ),
                          );
                          return;
                        } on GeneralException catch (_) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            makeSnackBar(
                              type: AlertType.error,
                              message:
                                  'No se pudo restablecer las credenciales.',
                            ),
                          );
                        }
                      },
                    ),
            ]),
          ),
        ),
      ),
    );
  }
}
