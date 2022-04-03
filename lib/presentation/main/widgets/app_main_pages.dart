import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/shared/navigation_provider.dart';
import 'package:patronaje_mobile_app/business/shared/user_local_data_provider.dart';
import 'package:patronaje_mobile_app/domain/utils/themes/color_theme.dart';
import 'package:patronaje_mobile_app/presentation/catalogue/catalogue_page.dart';
import 'package:patronaje_mobile_app/presentation/home/home_page.dart';
import 'package:patronaje_mobile_app/presentation/on_boarding_measures/on_boarding_page.dart';
import 'package:patronaje_mobile_app/presentation/shared/transition_page_route.dart';
import 'package:provider/provider.dart';

class AppMainPages extends StatelessWidget {
  const AppMainPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    final userDataProvider =
        Provider.of<UserLocalDataProvider>(context, listen: false);
    return PageView(
      controller: navigationProvider.pageController,
      /*onPageChanged: (value) {
        if (value == 1 && userDataProvider.firstTakeMeasure) {
          //navigationProvider.setWithoutMove(value);
          //navigationProvider.moveTo(value);
          Navigator.push(
            context,
            TransitionPageRoute(
              child: const OnBoardingMeasuresPage(),
              direction: AxisDirection.up,
            ),
          ).then((_) => navigationProvider.moveTo(value));
        } else {
          navigationProvider.moveTo(value);
        }
      },*/
      children: [
        const HomePage(),
        Container(
          color: Palette.green.shade200,
        ),
        const CataloguePage(),
        Container(
          color: Palette.orange.shade200,
        ),
      ],
    );
  }
}
