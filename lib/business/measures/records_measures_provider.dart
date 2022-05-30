import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:patronaje_mobile_app/domain/models/measures/body_measurements_min.dart';
import 'package:patronaje_mobile_app/persistence/local/implements/user_local_data_repository.dart';
import 'package:patronaje_mobile_app/persistence/remote/implements/measurement_repository.dart';

class RecordsMeasuresProvider extends ChangeNotifier {
  final MeasurementRepository _measurementRepository;
  final UserLocalDataRepository _userLocalDataRepository;

  RecordsMeasuresProvider(
      this._measurementRepository, this._userLocalDataRepository);

  bool _isLoading = false;
  List<BodyMeasurementsMin> _records = [];

  bool get isLoading => _isLoading;
  List<BodyMeasurementsMin> get records => _records;

  Future<void> getAllRecords() async {
    try {
      _isLoading = true;
      notifyListeners();
      final userData = _userLocalDataRepository.getUserLocalData();
      _records = await _measurementRepository.getAllRecords(userData.id);
      _isLoading = false;
      notifyListeners();
    } on PlatformException catch (_) {
      _isLoading = false;
      notifyListeners();
      rethrow;
    }
  }

  String formatDateAtIndex(int idx) {
    final date =
        '${_records[idx].measurementDate.day.toString().padLeft(2, '0')}-${_records[idx].measurementDate.month.toString().padLeft(2, '0')}-${_records[idx].measurementDate.year}';
    return date;
  }
}
