import 'dart:io';

import 'package:patronaje_mobile_app/domain/models/measures/body_measurements.dart';
import 'package:patronaje_mobile_app/domain/models/measures/body_measurements_min.dart';

abstract class BaseMeasurementRepository {
  Future<BodyMeasurements> computeMeasurements(
    File imageFrontal,
    File imageLateral,
    double height,
    int userId,
  );

  Future<List<BodyMeasurementsMin>> getAllRecords(int userId);
}
