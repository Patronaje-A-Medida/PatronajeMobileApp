import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/presentation/sign_in/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Iniciar sesión'),
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
            child: const SignInForm(),
          ),
        ),
      ),
    );
  }
}
