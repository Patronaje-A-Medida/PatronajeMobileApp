import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/shared/user_local_data_provider.dart';
import 'package:patronaje_mobile_app/domain/utils/themes/color_theme.dart';
import 'package:patronaje_mobile_app/presentation/profile/profile_page.dart';
import 'package:patronaje_mobile_app/presentation/shared/transition_page_route.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userData =
        Provider.of<UserLocalDataProvider>(context, listen: false).userData;
    return Drawer(
      backgroundColor: Palette.pink.shade50,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: ListView(
          children: [
            const Text('Bienvenida(o)'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                '${userData.names} ${userData.lastNames}',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              color: Palette.green,
            ),
            ListTile(
              leading: const Icon(Icons.person_rounded),
              iconColor: Colors.black,
              title: const Text('Mi perfil'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  TransitionPageRoute(
                    child: const ProfilePage(),
                    direction: AxisDirection.right,
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.accessibility_new_rounded),
              iconColor: Colors.black,
              title: const Text('Historial de medidas'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              iconColor: Colors.black,
              title: const Text('Cerrar sesión'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
