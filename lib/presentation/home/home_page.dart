import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/shared/user_local_data_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Consumer<UserLocalDataProvider>(
          builder: (context, userProvider, child) {
            return Text(userProvider.userData.token);
          },
        ),
      ),
    );
  }
}
