import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patronaje_mobile_app/business/auth/sign_up_client/bloc/sign_up_client_bloc.dart';
import 'package:patronaje_mobile_app/presentation/dependencies/injections.dart';
import 'package:patronaje_mobile_app/presentation/sign_up/widgets/sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Registrarse',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
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
            child: BlocProvider(
              create: (context) => getIt<SignUpClientBloc>()
                ..add(const SignUpClientEvent.start()),
              child: const SignUpForm(),
            ),
          ),
        ),
      ),
    );
  }
}
