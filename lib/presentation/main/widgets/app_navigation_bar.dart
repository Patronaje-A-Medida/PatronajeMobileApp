import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/shared/navigation_provider.dart';
import 'package:patronaje_mobile_app/business/shared/user_local_data_provider.dart';
import 'package:patronaje_mobile_app/presentation/on_boarding_measures/on_boarding_page.dart';
import 'package:patronaje_mobile_app/presentation/shared/transition_page_route.dart';
import 'package:provider/provider.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    final userDataProvider =
        Provider.of<UserLocalDataProvider>(context, listen: false);
    return BottomNavigationBar(
      currentIndex: navigationProvider.currentPage,
      onTap: (value) {
        if (value == navigationProvider.currentPage) return;

        navigationProvider.currentPage = value;

        /*if (value == 1 && userDataProvider.firstTakeMeasure) {
          Navigator.push(
            context,
            TransitionPageRoute(
              child: const OnBoardingMeasuresPage(),
              direction: AxisDirection.up,
            ),
          );
        }*/
      },
      selectedItemColor: Theme.of(context).colorScheme.primary,
      unselectedItemColor: Colors.grey,
      items: const [
        /*BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: 'Inicio',
        ),*/
        BottomNavigationBarItem(
          icon: Icon(Icons.accessibility_new_rounded),
          label: 'Medidas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book_outlined),
          label: 'Catálogo',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_rounded),
          label: 'Órdenes',
        ),
      ],
    );
  }
}
