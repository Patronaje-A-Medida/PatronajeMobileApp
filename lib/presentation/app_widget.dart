import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/domain/utils/themes/color_theme.dart';
import 'package:patronaje_mobile_app/presentation/welcome/welcome_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PRY2021251',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        fontFamily: 'Sora',
        primarySwatch: Palette.pink,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Palette.pink.shade500,
          secondary: Palette.yellow.shade500,
          surface: Colors.white,
          background: Palette.pink,
          error: Colors.red.shade100,
          onBackground: Colors.white,
          onError: Colors.red,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Palette.pink.shade500,
          primaryVariant: Colors.pink,
          secondaryVariant: Colors.yellow,
        ),
        visualDensity: VisualDensity.standard,
        canvasColor: Palette.pink,
        errorColor: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black,
              fontFamily: 'Sora',
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            textStyle: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black,
              fontFamily: 'Sora',
            ),
          ),
        ),
        //elevatedButtonTheme:
      ),
      home: const WelcomePage(),
    );
  }
}
