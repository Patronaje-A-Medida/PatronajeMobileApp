import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/shared/navigation_provider.dart';
import 'package:patronaje_mobile_app/presentation/main/widgets/app_main_pages.dart';
import 'package:patronaje_mobile_app/presentation/main/widgets/app_navigation_bar.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(navigationProvider.currentTitlePage),
          actions: const [
            Icon(Icons.menu),
            SizedBox(width: 18),
          ],
        ),
        body: const AppMainPages(),
        bottomNavigationBar: const AppNavigationBar(),
      ),
    );
  }
}
