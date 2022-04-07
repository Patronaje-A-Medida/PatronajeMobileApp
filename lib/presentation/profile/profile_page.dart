import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/profile/profile_provider.dart';
import 'package:patronaje_mobile_app/presentation/profile/profile_edit_mode.dart';
import 'package:patronaje_mobile_app/presentation/profile/profile_read_mode.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profileProvider = Provider.of<ProfileProvider>(context);

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Mi Perfil'),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 18,
            ),
            onPressed: () {
              FocusManager.instance.primaryFocus?.unfocus();
              Future.delayed(const Duration(seconds: 1),
                  () => profileProvider.editMode = false);
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(22.0),
          child: profileProvider.editMode
              ? const ProfileEditMode()
              : const ProfileReadMode(),
        ),
      ),
    );
  }
}
