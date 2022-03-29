import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/presentation/shared/filled_primary_button.dart';
import 'package:patronaje_mobile_app/presentation/shared/outlined_secondary_button.dart';
import 'package:patronaje_mobile_app/presentation/shared/transition_page_route.dart';
import 'package:patronaje_mobile_app/presentation/sign_up/sign_up_page.dart';
import 'package:patronaje_mobile_app/presentation/user_instructions/instructions_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),*/
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(24),
          width: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      'assets/images/dummy.png',
                      fit: BoxFit.contain,
                      width: size.width * 0.35,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Patronaje',
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
              const Text(
                'Las mejores prendas a tu medida \nhecha por los mejores ateliers',
                textAlign: TextAlign.center,
                /*style: GoogleFonts.sora(
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),*/
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
              ),
              Column(
                children: [
                  FilledPrimaryButton(
                    text: 'Iniciar sesión',
                    minimunSize: const Size.fromHeight(36),
                    onPressed: () {
                      Navigator.of(context).push(
                        TransitionPageRoute(
                          child: Instructions(),
                          direction: AxisDirection.left,
                        ),
                      );
                    },
                  ),
                  OutlinedSecondaryButton(
                    text: 'Regístrate',
                    minimunSize: const Size.fromHeight(36),
                    onPressed: () {
                      /*Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        ),
                      );*/
                      Navigator.push(
                        context,
                        TransitionPageRoute(
                          child: const SignUpPage(),
                          direction: AxisDirection.left,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
