import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/shared/user_local_data_provider.dart';
import 'package:patronaje_mobile_app/domain/utils/themes/color_theme.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userDataProvider = Provider.of<UserLocalDataProvider>(context);
    final sizeH = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Perfil'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 18,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: SizedBox(
                height: sizeH * 0.25,
                width: sizeH * 0.25,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: ClipOval(
                        child: Image.network(
                          userDataProvider.userData.imageProfile,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: IconButton(
                        icon: const Icon(Icons.photo_camera_rounded),
                        iconSize: 32.0,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            /*TextFormField(
              decoration: const InputDecoration(
                labelText: 'Apellidos',
                labelStyle: TextStyle(fontWeight: FontWeight.w500),
              ),
              initialValue: 'Mi nombre',
              //readOnly: true,
            ),*/
            /*const Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              child: Text(
                'Editar',
                textAlign: TextAlign.end,
              ),
            ),*/
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: Row(
                    children: const [
                      Text('Editar'),
                      Icon(
                        Icons.edit,
                        size: 18,
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Nombres',
                    style: TextStyle(
                      color: Palette.pink,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(userDataProvider.userData.names),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Apellidos',
                    style: TextStyle(
                      color: Palette.pink,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(userDataProvider.userData.lastNames),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Teléfono',
                    style: TextStyle(
                      color: Palette.pink,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(userDataProvider.userData.phone),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Estatura',
                    style: TextStyle(
                      color: Palette.pink,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(userDataProvider.userData.height.toStringAsFixed(2) +
                      ' metros'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
