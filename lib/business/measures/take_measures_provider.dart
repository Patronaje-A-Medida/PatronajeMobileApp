import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class TakeMeasuresProvider extends ChangeNotifier {
  File? imageFrontal;
  File? imageLateral;

  bool get canCalculateMeasures {
    if (imageFrontal != null && imageLateral != null) {
      notifyListeners();
      return true;
    } else {
      notifyListeners();
      return false;
    }
  }

  Future<void> takePhotoFrontal() async {
    try {
      final photo = await ImagePicker().pickImage(source: ImageSource.camera);
      if (photo == null) return;

      final imageTemporary = File(photo.path);
      this.imageFrontal = imageTemporary;
      notifyListeners();
    } on PlatformException catch (err) {
      print('Error al tomar la imagen ${err.toString()}');
    }
  }

  Future<void> takePhotoLateral() async {
    try {
/*final photo = await ImagePicker().pickImage(source: ImageSource.camera);
    if (photo == null) return;

    final imageTemporary = File(photo.path);
    this.imageLateral = imageTemporary;*/
      final imageTemporary = await takePhoto();
      if (imageTemporary == null) return;
      this.imageLateral = imageTemporary;
      notifyListeners();
    } on PlatformException catch (err) {
      print('Error al tomar la imagen ${err.toString()}');
    }
  }

  Future<File?> takePhoto() async {
    final photo = await ImagePicker().pickImage(source: ImageSource.camera);
    if (photo == null) return null;
    return File(photo.path);
  }
}
