import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/auth/auth_provider.dart';
import 'package:patronaje_mobile_app/business/shared/sign_in_form_provider.dart';
import 'package:patronaje_mobile_app/business/shared/user_local_data_provider.dart';
import 'package:patronaje_mobile_app/domain/handlers/exceptions/general_exception.dart';
import 'package:patronaje_mobile_app/domain/utils/enums/general_enums.dart';
import 'package:patronaje_mobile_app/presentation/main/main_page.dart';
import 'package:patronaje_mobile_app/presentation/shared/custom_snackbar.dart';
import 'package:patronaje_mobile_app/presentation/shared/app_filled_button.dart';
import 'package:patronaje_mobile_app/presentation/shared/loading_primary_button.dart';
import 'package:patronaje_mobile_app/presentation/shared/transition_page_route.dart';
import 'package:patronaje_mobile_app/presentation/sign_up/sign_up_page.dart';
import 'package:provider/provider.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Consumer2<AuthProvider, SignInFormProvider>(
        builder: (context, authProvider, formProvider, child) {
      return Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  labelText: 'Correo',
                  labelStyle: TextStyle(fontWeight: FontWeight.w500),
                ),
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) => formProvider.buildUserLogin(email: value),
                validator: (value) => formProvider.validateEmail(value),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  labelText: 'Contraseña',
                  labelStyle: TextStyle(fontWeight: FontWeight.w500),
                ),
                autocorrect: false,
                obscureText: true,
                onChanged: (value) =>
                    formProvider.buildUserLogin(password: value),
                validator: (value) => formProvider.validatePassword(value),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6.0, bottom: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    '¿Olvidaste tu contraseña?',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            authProvider.isLoading
                ? const LoadingPrimaryButton(minimunSize: Size.fromHeight(36))
                : AppFilledButton(
                    text: 'Iniciar sesión',
                    minimunSize: const Size.fromHeight(36),
                    onPressed: () async {
                      FocusManager.instance.primaryFocus?.unfocus();

                      if (!_formKey.currentState!.validate()) return;
                      try {
                        final result =
                            await authProvider.signIn(formProvider.userLogin);

                        Provider.of<UserLocalDataProvider>(context,
                                listen: false)
                            .updateUser(result);

                        Navigator.pushAndRemoveUntil(
                          context,
                          TransitionPageRoute(
                              child: const MainPage(),
                              direction: AxisDirection.up),
                          ModalRoute.withName(''),
                        );
                      } on GeneralException catch (_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          makeSnackBar(
                            type: AlertType.error,
                            message: 'Correo o contraseña inválidas.',
                          ),
                        );
                      }
                    },
                  ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              /*child: Text(
                '¿Aún no te has registrado? Registrate aquí',
                textAlign: TextAlign.end,
                style: TextStyle(
                  //decoration: TextDecoration.underline,
                  fontSize: 12.0,
                ),*/
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                    fontFamily: 'Sora',
                  ),
                  children: [
                    const TextSpan(text: '¿Aún no te has registrado? '),
                    TextSpan(
                        text: 'Regístrate aquí',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Theme.of(context).colorScheme.secondary),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacement(
                              context,
                              TransitionPageRoute(
                                  child: const SignUpPage(),
                                  direction: AxisDirection.left),
                            );
                          }),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
