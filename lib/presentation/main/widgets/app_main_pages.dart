import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/shared/navigation_provider.dart';
import 'package:patronaje_mobile_app/domain/utils/themes/color_theme.dart';
import 'package:patronaje_mobile_app/presentation/catalogue/catalogue_page.dart';
import 'package:patronaje_mobile_app/presentation/home/home_page.dart';
import 'package:provider/provider.dart';

class AppMainPages extends StatelessWidget {
  const AppMainPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);

    return PageView(
      controller: navigationProvider.pageController,
      onPageChanged: (value) => navigationProvider.moveTo(value),
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
