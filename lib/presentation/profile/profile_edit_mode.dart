import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/auth/auth_provider.dart';
import 'package:patronaje_mobile_app/business/profile/profile_provider.dart';
import 'package:patronaje_mobile_app/business/shared/user_local_data_provider.dart';
import 'package:patronaje_mobile_app/domain/handlers/exceptions/general_exception.dart';
import 'package:patronaje_mobile_app/domain/utils/enums/general_enums.dart';
import 'package:patronaje_mobile_app/presentation/shared/custom_snackbar.dart';
import 'package:provider/provider.dart';

class ProfileEditMode extends StatelessWidget {
  const ProfileEditMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userDataProvider = Provider.of<UserLocalDataProvider>(context);
    final profileProvider = Provider.of<ProfileProvider>(context);
    final sizeH = MediaQuery.of(context).size.height;
    final _formKey = GlobalKey<FormState>();

    return Column(
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
                      child: profileProvider.newImageProfile != null
                          ? Image.file(profileProvider.newImageProfile!)
                          : Image.network(
                              userDataProvider.userData.imageProfile),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                child: Row(
                  children: const [
                    Text('Actualizar '),
                    Icon(
                      Icons.update,
                      size: 18,
                    ),
                  ],
                ),
                onPressed: () async {
                  FocusManager.instance.primaryFocus?.unfocus();

                  if (!_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      makeSnackBar(
                        type: AlertType.error,
                        message: 'Formulario de datos inválido.',
                      ),
                    );
                    profileProvider.editMode = false;
                    return;
                  }

                  try {
                    profileProvider.buildUserUpdate(
                        id: userDataProvider.userData.id);

                    final result =
                        await Provider.of<AuthProvider>(context, listen: false)
                            .updateProfile(profileProvider.userUpdate);

                    userDataProvider.updateUserByUserRead(result);

                    ScaffoldMessenger.of(context).showSnackBar(
                      makeSnackBar(
                        type: AlertType.success,
                        message: 'Datos personales actualizados exitosamente.',
                      ),
                    );

                    profileProvider.editMode = false;
                  } on GeneralException catch (err) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      makeSnackBar(
                        type: AlertType.error,
                        message: err.message,
                      ),
                    );
                  }
                },
              ),
            ],
          ),
          Expanded(
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 12.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: const InputDecoration(
                        labelText: 'Nombres',
                        labelStyle: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      autocorrect: false,
                      keyboardType: TextInputType.name,
                      initialValue: profileProvider.userUpdate.nameUser,
                      onChanged: (value) =>
                          profileProvider.buildUserUpdate(nameUser: value),
                      validator: (value) =>
                          profileProvider.validateNameUser(value),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: const InputDecoration(
                        labelText: 'Apellidos',
                        labelStyle: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      autocorrect: false,
                      keyboardType: TextInputType.name,
                      initialValue: profileProvider.userUpdate.lastNameUser,
                      onChanged: (value) =>
                          profileProvider.buildUserUpdate(lastNameUser: value),
                      validator: (value) =>
                          profileProvider.validateLastNameUser(value),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: const InputDecoration(
                        labelText: 'Teléfono',
                        labelStyle: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      autocorrect: false,
                      keyboardType: TextInputType.phone,
                      initialValue: profileProvider.userUpdate.phone,
                      onChanged: (value) =>
                          profileProvider.buildUserUpdate(phone: value),
                      validator: (value) =>
                          profileProvider.validatePhone(value),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: const InputDecoration(
                        labelText: 'Estatura',
                        labelStyle: TextStyle(fontWeight: FontWeight.w500),
                        suffixText: 'metros',
                      ),
                      autocorrect: false,
                      keyboardType: TextInputType.number,
                      initialValue:
                          profileProvider.userUpdate.height.toString(),
                      onChanged: (value) =>
                          profileProvider.buildUserUpdate(height: value),
                      validator: (value) =>
                          profileProvider.validateHeight(value),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]);
  }
}
