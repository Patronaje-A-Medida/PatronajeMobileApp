import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/shared/user_local_data_provider.dart';
import 'package:patronaje_mobile_app/presentation/measures/history_measures_page.dart';
import 'package:patronaje_mobile_app/presentation/on_boarding_measures/on_boarding_page.dart';
import 'package:patronaje_mobile_app/presentation/shared/transition_page_route.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeW = MediaQuery.of(context).size.width;
    final sizeH = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      child: Consumer<UserLocalDataProvider>(
        builder: (context, userProvider, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/images/banner.png'),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                child: _greetings(
                    '${userProvider.userData.names} ${userProvider.userData.lastNames}'),
              ),
              Flexible(
                child: ListView(
                  children: [
                    InkWell(
                      onTap: () {
                        if (userProvider.firstTakeMeasure) {
                          Navigator.push(
                            context,
                            TransitionPageRoute(
                              child: const OnBoardingMeasuresPage(),
                              direction: AxisDirection.up,
                            ),
                          );
                        }
                      },
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        elevation: 5,
                        margin: const EdgeInsets.all(18),
                        child: Image.asset(
                          'assets/images/toma_medidas_btn.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          TransitionPageRoute(
                            child: const HistoryMeasuresPage(),
                            direction: AxisDirection.up,
                          ),
                        );
                      },
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        elevation: 5,
                        margin: const EdgeInsets.symmetric(horizontal: 18),
                        child: Image.asset(
                          'assets/images/historial_medidas_btn.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _greetings(String names) {
    return RichText(
      text: TextSpan(children: [
        const TextSpan(
          text: 'Bienvenida,\n',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Sora',
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ),
        TextSpan(
          text: names,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: 'Sora',
            fontWeight: FontWeight.w600,
            fontSize: 22.0,
          ),
        ),
      ]),
    );
  }
}
