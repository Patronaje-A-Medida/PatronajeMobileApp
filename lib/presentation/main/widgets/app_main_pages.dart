import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/shared/navigation_provider.dart';
import 'package:patronaje_mobile_app/domain/utils/themes/color_theme.dart';
import 'package:patronaje_mobile_app/presentation/catalogue/catalogue_page.dart';
import 'package:patronaje_mobile_app/presentation/home/home_page.dart';
import 'package:patronaje_mobile_app/presentation/orders/orders_page.dart';
import 'package:provider/provider.dart';

class AppMainPages extends StatelessWidget {
  const AppMainPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
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
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const HomePage(),
        Container(
          color: Palette.green.shade200,
        ),
        const CataloguePage(),
        const OrdersPage(),
      ],
    );
  }
}
