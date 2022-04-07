import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/shared/navigation_provider.dart';
import 'package:patronaje_mobile_app/business/shared/user_local_data_provider.dart';
import 'package:patronaje_mobile_app/presentation/main/widgets/app_drawer.dart';
import 'package:patronaje_mobile_app/presentation/main/widgets/app_main_pages.dart';
import 'package:patronaje_mobile_app/presentation/main/widgets/app_navigation_bar.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    final userLocalData = Provider.of<UserLocalDataProvider>(context).userData;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(navigationProvider.currentTitlePage),
          actions: [
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
