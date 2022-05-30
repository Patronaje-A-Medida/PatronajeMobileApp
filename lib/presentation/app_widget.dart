import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/auth/auth_provider.dart';
import 'package:patronaje_mobile_app/business/basket/basket_provider.dart';
import 'package:patronaje_mobile_app/business/garments/garment_provider.dart';
import 'package:patronaje_mobile_app/business/measures/take_measures_provider.dart';
import 'package:patronaje_mobile_app/business/on_boarding_measures/measures_guide_provider.dart';
import 'package:patronaje_mobile_app/business/orders/order_provider.dart';
import 'package:patronaje_mobile_app/business/profile/profile_provider.dart';
import 'package:patronaje_mobile_app/business/shared/configuration_types_provider.dart';
import 'package:patronaje_mobile_app/business/shared/forgot_password_provider.dart';
import 'package:patronaje_mobile_app/business/shared/navigation_provider.dart';
import 'package:patronaje_mobile_app/business/shared/sign_in_form_provider.dart';
import 'package:patronaje_mobile_app/business/shared/sign_up_form_provider.dart';
import 'package:patronaje_mobile_app/business/shared/user_local_data_provider.dart';
import 'package:patronaje_mobile_app/domain/utils/themes/color_theme.dart';
import 'package:patronaje_mobile_app/persistence/local/implements/user_local_data_repository.dart';
import 'package:patronaje_mobile_app/persistence/remote/implements/auth_repository.dart';
import 'package:patronaje_mobile_app/persistence/remote/implements/configuration_types_repository.dart';
import 'package:patronaje_mobile_app/persistence/remote/implements/garment_repository.dart';
import 'package:patronaje_mobile_app/persistence/remote/implements/measurement_repository.dart';
import 'package:patronaje_mobile_app/persistence/remote/implements/order_repository.dart';
import 'package:patronaje_mobile_app/presentation/welcome/welcome_page.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider(AuthRepository())),
        ChangeNotifierProvider(create: (_) => SignUpFormProvider()),
        ChangeNotifierProvider(
          create: (_) => UserLocalDataProvider(UserLocalDataRepository()),
        ),
        Provider(create: (_) => SignInFormProvider()),
        Provider(create: (_) => ForgotPasswordProvider()),
        ChangeNotifierProvider(create: (_) => NavigationProvider()),
        ChangeNotifierProvider(
          create: (_) => GarmentProvider(GarmentRepository())..getAllByQuery(),
        ),
        ChangeNotifierProvider(
          create: (_) => ConfigurationTypesProvider(
            ConfigurationTypesRepository(),
          )..getAllTypes(),
        ),
        ChangeNotifierProvider(create: (_) => MeasuresGuideProvider()),
        ChangeNotifierProvider(
          create: (_) => TakeMeasuresProvider(
            MeasurementRepository(),
            UserLocalDataRepository(),
          ),
        ),
        ChangeNotifierProvider(create: (_) => ProfileProvider()),
        ChangeNotifierProvider(
          create: (_) => OrderProvider(
            OrderRepository(UserLocalDataRepository()),
          )..getOrdersByIdCliente(),
        ),
        ChangeNotifierProvider(
          create: (_) => BasketProvider(
            UserLocalDataRepository(),
            OrderRepository(UserLocalDataRepository()),
          ),
        ),
      ],
      child: MaterialApp(
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
            primary: Palette.pink.shade200,
            secondary: Palette.green.shade400,
            surface: Colors.white,
            background: Colors.white,
            error: Colors.red,
            onBackground: Colors.black,
            onError: Colors.white,
            onPrimary: Colors.black,
            onSecondary: Colors.black,
            onSurface: Colors.black,
            primaryVariant: Palette.pink.shade500,
            secondaryVariant: Palette.green.shade700,
          ),
          visualDensity: VisualDensity.standard,
          canvasColor: Colors.white,
          errorColor: Colors.red,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(
                fontWeight: FontWeight.normal,
                //color: Colors.black,
                fontFamily: 'Sora',
              ),
            ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              textStyle: const TextStyle(
                fontWeight: FontWeight.normal,
                //color: Colors.black,
                fontFamily: 'Sora',
              ),
            ),
          ),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            titleTextStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontFamily: 'Sora',
            ),
          ),
        ),
        home: const WelcomePage(),
      ),
    );
  }
}
