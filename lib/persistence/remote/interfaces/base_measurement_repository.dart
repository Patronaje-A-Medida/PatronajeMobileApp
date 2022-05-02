import 'dart:io';

import 'package:patronaje_mobile_app/domain/models/measures/body_measurements.dart';

abstract class BaseMeasurementRepository {
  Future<BodyMeasurements> computeMeasurements(
    File imageFrontal,
    File imageLateral,
    double height,
    int userId,
  );
}
