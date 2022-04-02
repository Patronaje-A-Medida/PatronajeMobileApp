import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/auth/auth_provider.dart';
import 'package:patronaje_mobile_app/business/shared/sign_up_form_provider.dart';
import 'package:patronaje_mobile_app/business/shared/user_local_data_provider.dart';
import 'package:patronaje_mobile_app/domain/handlers/exceptions/general_exception.dart';
import 'package:patronaje_mobile_app/domain/utils/enums/general_enums.dart';
import 'package:patronaje_mobile_app/presentation/main/main_page.dart';
import 'package:patronaje_mobile_app/presentation/shared/custom_snackbar.dart';
import 'package:patronaje_mobile_app/presentation/shared/app_filled_button.dart';
import 'package:patronaje_mobile_app/presentation/shared/loading_primary_button.dart';
import 'package:patronaje_mobile_app/presentation/shared/transition_page_route.dart';
import 'package:provider/provider.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Consumer2<AuthProvider, SignUpFormProvider>(
        builder: (context, authProvider, formProvider, child) {
      return Form(
        key: _formKey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  labelText: 'Nombres',
                  labelStyle: TextStyle(fontWeight: FontWeight.w500),
                ),
                autocorrect: false,
                keyboardType: TextInputType.name,
                onChanged: (value) =>
                    formProvider.buildUserCreate(nameUser: value),
                validator: (value) => formProvider.validateNameUser(value),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  labelText: 'Apellidos',
                  labelStyle: TextStyle(fontWeight: FontWeight.w500),
                ),
                autocorrect: false,
                keyboardType: TextInputType.name,
                onChanged: (value) =>
                    formProvider.buildUserCreate(lastNameUser: value),
                validator: (value) => formProvider.validateLastNameUser(value),
              ),
            ),
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
                onChanged: (value) =>
                    formProvider.buildUserCreate(email: value),
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
                    formProvider.buildUserCreate(password: value),
                validator: (value) => formProvider.validatePassword(value),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  labelText: 'Teléfono',
                  labelStyle: TextStyle(fontWeight: FontWeight.w500),
                ),
                autocorrect: false,
                keyboardType: TextInputType.phone,
                onChanged: (value) =>
                    formProvider.buildUserCreate(phone: value),
                validator: (value) => formProvider.validatePhone(value),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  labelText: 'Estatura',
                  labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  suffixText: 'metros',
                ),
                autocorrect: false,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  final h = double.tryParse(value);
                  if (h != null) formProvider.buildUserCreate(height: value);
                },
                validator: (value) => formProvider.validateHeight(value),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: FormField(
                builder: (state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: formProvider.termsAndConditions,
                            onChanged: (val) {
                              FocusManager.instance.primaryFocus?.unfocus();
                              if (val != null) {
                                formProvider.termsAndConditions = val;
                              }
                            },
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(text: 'Acepto los '),
                                TextSpan(
                                  text: 'términos',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.underline,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                const TextSpan(text: ' y '),
                                TextSpan(
                                  text: 'condiciones',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.underline,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                const TextSpan(text: ' de uso.'),
                              ],
                              style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'Sora',
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        state.errorText ?? '',
                        style: TextStyle(
                          color: Theme.of(context).errorColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  );
                },
                validator: (value) => formProvider.validateTermsAndConditions(),
              ),
            ),
            authProvider.isLoading
                ? const LoadingPrimaryButton()
                : AppFilledButton(
                    text: 'Registrarse',
                    onPressed: () async {
                      FocusManager.instance.primaryFocus?.unfocus();

                      if (!_formKey.currentState!.validate()) return;
                      try {
                        final result =
                            await authProvider.signUp(formProvider.userCreate);

                        Provider.of<UserLocalDataProvider>(
                          context,
                          listen: false,
                        ).createUser(result);

                        ScaffoldMessenger.of(context).showSnackBar(
                          makeSnackBar(
                            type: AlertType.success,
                            message: 'Registro de usuario exitoso',
                          ),
                        );

                        Future.delayed(const Duration(seconds: 2), () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            TransitionPageRoute(
                              child: const MainPage(),
                              direction: AxisDirection.up,
                            ),
                            ModalRoute.withName(''),
                          );
                        });
                      } on GeneralException catch (err) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          makeSnackBar(
                            type: AlertType.error,
                            message: err.message,
                          ),
                        );
                      }
                    },
                  )
          ],
        ),
      );
    });
  }
}
