import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:patronaje_mobile_app/domain/models/measures/measures_temp.dart';

class TakeMeasuresProvider extends ChangeNotifier {
  File? _imageFrontal;
  File? _imageLateral;
  bool _alreadyMeasures = false;

  // placeholder
  final List<BasicMeasure> basicMeasures = [
    BasicMeasure(label: 'Altura', value: 160),
    BasicMeasure(label: 'Busto', value: 80),
    BasicMeasure(label: 'Cintura', value: 82.5),
    BasicMeasure(label: 'Cadera', value: 90.7),
  ];

  final List<BasicMeasure> otherMeasures = [
    BasicMeasure(label: 'Altura', value: 160),
    BasicMeasure(label: 'Busto', value: 80),
    BasicMeasure(label: 'Cintura', value: 82.5),
    BasicMeasure(label: 'Cadera', value: 90.7),
    BasicMeasure(label: 'Tórax', value: 120),
    BasicMeasure(label: 'Cadera alta', value: 92),
    BasicMeasure(label: 'Muslo', value: 50.5),
    BasicMeasure(label: 'Pantorrillas', value: 27.8),
    BasicMeasure(label: 'Entrepierna', value: 91.2),
    BasicMeasure(label: 'Talle por delante', value: 65.2),
    BasicMeasure(label: 'Talle por detrás', value: 73.5),
    BasicMeasure(label: 'Hombros', value: 51.6),
  ];

  File? get imageFrontal => _imageFrontal;
  File? get imageLateral => _imageLateral;
  bool get alreadyMeasures => _alreadyMeasures;

  bool get canCalculateMeasures {
    if (_imageFrontal != null && _imageLateral != null) {
      notifyListeners();
      return true;
    } else {
      notifyListeners();
      return false;
    }
  }

  Future<void> takePhotoFrontal() async {
    try {
      final imageTemporary = await takePhoto();
      if (imageTemporary == null) return;
      _imageFrontal = imageTemporary;
      notifyListeners();
    } on PlatformException catch (err) {
      print('Error al tomar la imagen ${err.toString()}');
    }
  }

  Future<void> takePhotoLateral() async {
    try {
      final imageTemporary = await takePhoto();
      if (imageTemporary == null) return;
      _imageLateral = imageTemporary;
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

  Future<void> calculateMeasures() async {
    _alreadyMeasures = false;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 5), () {
      _alreadyMeasures = true;
      notifyListeners();
    });
  }

  void resetPhotos() {
    _imageFrontal = null;
    _imageLateral = null;
  }
}
