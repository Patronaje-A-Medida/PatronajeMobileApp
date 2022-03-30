import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/shared/user_local_data_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Consumer<UserLocalDataProvider>(
        builder: (context, userProvider, child) {
          return Column(
            children: [
              Text(userProvider.userData.token),
              const SizedBox(height: 36.0),
              Text(userProvider.userData.email),
              Text(userProvider.userData.names),
              Text(userProvider.userData.firstUseApp.toString()),
              Text(userProvider.userData.firstTakeMeasure.toString()),
              Text(userProvider.userData.expiredSession.toString()),
            ],
          );
        },
      ),
    );
  }
}
