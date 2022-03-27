import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patronaje_mobile_app/business/auth/sign_up_client/bloc/sign_up_client_bloc.dart';
import 'package:patronaje_mobile_app/presentation/shared/filled_primary_button.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return BlocConsumer<SignUpClientBloc, SignUpClientState>(
      listener: (context, state) {
        /*state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold((f) {}, (_) {
                  print('que fue');
                }));*/
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Nombres',
                    labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  autocorrect: false,
                  keyboardType: TextInputType.name,
                  onChanged: (value) => context
                      .read<SignUpClientBloc>()
                      .add(SignUpClientEvent.nameChanged(value)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Apellidos',
                    labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  autocorrect: false,
                  keyboardType: TextInputType.name,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Correo',
                    labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) => context
                      .read<SignUpClientBloc>()
                      .add(SignUpClientEvent.emailChanged(value)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Contraseña',
                    labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  autocorrect: false,
                  obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Teléfono',
                    labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  autocorrect: false,
                  keyboardType: TextInputType.phone,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Estatura',
                    labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  autocorrect: false,
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (bool? val) {},
                    ),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(text: 'Acepto los '),
                          TextSpan(
                            text: 'términos',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(text: ' y '),
                          TextSpan(
                            text: 'condiciones',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(text: ' de uso.'),
                        ],
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Sora',
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              FilledPrimaryButton(
                text: 'Registrarse',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('jajaj');
                  } else {
                    print('jejeje');
                  }
                },
              )
            ],
          ),
        );
      },
    );
  }
}
