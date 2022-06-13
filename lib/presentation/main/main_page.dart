import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/basket/basket_provider.dart';
import 'package:patronaje_mobile_app/business/shared/navigation_provider.dart';
import 'package:patronaje_mobile_app/business/shared/user_local_data_provider.dart';
import 'package:patronaje_mobile_app/presentation/main/widgets/app_drawer.dart';
import 'package:patronaje_mobile_app/presentation/main/widgets/app_main_pages.dart';
import 'package:patronaje_mobile_app/presentation/main/widgets/app_navigation_bar.dart';
import 'package:patronaje_mobile_app/presentation/orders/new_order_page.dart';
import 'package:patronaje_mobile_app/presentation/shared/transition_page_route.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    final userLocalData = Provider.of<UserLocalDataProvider>(context).userData;
    final basketProvider = Provider.of<BasketProvider>(context);

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        /*extendBodyBehindAppBar:
            navigationProvider.currentPage == 0 ? true : false,*/
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(navigationProvider.currentTitlePage),
          actions: [
            if (basketProvider.garmentsSelected.isNotEmpty)
              IconButton(
                icon: Badge(
                  badgeContent:
                      Text(basketProvider.garmentsSelected.length.toString()),
                  child: const Icon(Icons.shopping_cart_rounded),
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                  alignment: Alignment.bottomRight,
                  animationType: BadgeAnimationType.scale,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    TransitionPageRoute(
                        child: const NewOrderPage(),
                        direction: AxisDirection.up),
                  );
                },
              ),
            Builder(builder: (context) {
              return RawMaterialButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                shape: const CircleBorder(),
                child: CircleAvatar(
                  child: ClipOval(
                    child: Image.network(
                      userLocalData.imageProfile,
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                  ),
                ),
              );
            }),
            //const SizedBox(width: 18),
          ],
        ),
        body: const AppMainPages(),
        bottomNavigationBar: const AppNavigationBar(),
        endDrawer: const AppDrawer(),
      ),
    );
  }
}
