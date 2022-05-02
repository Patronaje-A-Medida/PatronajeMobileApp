import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:patronaje_mobile_app/domain/models/measures/measurement.dart';
import 'package:patronaje_mobile_app/domain/models/measures/measures_temp.dart';
import 'package:patronaje_mobile_app/persistence/local/implements/user_local_data_repository.dart';
import 'package:patronaje_mobile_app/persistence/remote/implements/measurement_repository.dart';

class TakeMeasuresProvider extends ChangeNotifier {
  final MeasurementRepository _measurementRepository;
  final UserLocalDataRepository _userLocalDataRepository;
  TakeMeasuresProvider(
      this._measurementRepository, this._userLocalDataRepository);

  File? _imageFrontal;
  File? _imageLateral;
  bool _alreadyMeasures = false;
  List<BasicMeasure> _basicMeasures = [];
  List<Measurement> _allMeasures = [];

  File? get imageFrontal => _imageFrontal;
  File? get imageLateral => _imageLateral;
  bool get alreadyMeasures => _alreadyMeasures;
  List<BasicMeasure> get basicMeasures => _basicMeasures;
  List<Measurement> get allMeasures => _allMeasures;

  bool get canCalculateMeasures {
    if (_imageFrontal != null && _imageLateral != null) {
      notifyListeners();
      return true;
    } else {
      notifyListeners();
      return false;
    }
  }

  Future<void> takePhotoFrontal({int source = 1}) async {
    try {
      final imageTemporary = await takePhoto(source: source);
      if (imageTemporary == null) return;
      _imageFrontal = imageTemporary;
      notifyListeners();
    } on PlatformException catch (err) {
      print('Error al tomar la imagen ${err.toString()}');
    }
  }

  Future<void> takePhotoLateral({int source = 1}) async {
    try {
      final imageTemporary = await takePhoto(source: source);
      if (imageTemporary == null) return;
      _imageLateral = imageTemporary;
      notifyListeners();
    } on PlatformException catch (err) {
      print('Error al tomar la imagen ${err.toString()}');
    }
  }

  Future<File?> takePhoto({int source = 1}) async {
    final sourceType = source == 1 ? ImageSource.camera : ImageSource.gallery;
    final photo = await ImagePicker().pickImage(source: sourceType);
    if (photo == null) return null;
    return File(photo.path);
  }

  Future<void> calculateMeasures() async {
    _alreadyMeasures = false;
    notifyListeners();
    /*await Future.delayed(const Duration(seconds: 5), () {
      _alreadyMeasures = true;
      notifyListeners();
    });*/
    final userData = _userLocalDataRepository.getUserLocalData();
    final result = await _measurementRepository.computeMeasurements(
        _imageFrontal!, _imageLateral!, userData.height * 100, userData.id);

    _basicMeasures = [
      BasicMeasure(label: 'Altura', value: result.measurements[0].value),
      BasicMeasure(label: 'Busto', value: result.measurements[1].value),
      BasicMeasure(label: 'Cintura', value: result.measurements[2].value),
      BasicMeasure(label: 'Cadera', value: result.measurements[4].value),
    ];

    _allMeasures = result.measurements;

    _alreadyMeasures = true;
    notifyListeners();
  }

  void resetPhotos() {
    _imageFrontal = null;
    _imageLateral = null;
  }
}
