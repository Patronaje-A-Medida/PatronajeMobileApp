import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:patronaje_mobile_app/domain/models/measures/measurement.dart';

class BodyMeasurements {
  final String id;
  final DateTime measurementDate;
  final List<Measurement> measurements;
  BodyMeasurements({
    required this.id,
    required this.measurementDate,
    required this.measurements,
  });

  BodyMeasurements copyWith({
    String? id,
    DateTime? measurementDate,
    List<Measurement>? measurements,
  }) {
    return BodyMeasurements(
      id: id ?? this.id,
      measurementDate: measurementDate ?? this.measurementDate,
      measurements: measurements ?? this.measurements,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'measurement_date': measurementDate,
      'measurements': measurements.map((x) => x.toMap()).toList(),
    };
  }

  factory BodyMeasurements.fromMap(Map<String, dynamic> map) {
    return BodyMeasurements(
      id: map['id'],
      measurementDate: DateTime.parse(map['measurement_date'].toString()),
      measurements: List<Measurement>.from(
          map['measurements'].map((x) => Measurement.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory BodyMeasurements.fromJson(String source) =>
      BodyMeasurements.fromMap(json.decode(source));

  @override
  String toString() =>
      'BodyMeasurements(id: $id, measurementDate: $measurementDate, measurements: $measurements)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BodyMeasurements &&
        other.id == id &&
        other.measurementDate == measurementDate &&
        listEquals(other.measurements, measurements);
  }

  @override
  int get hashCode =>
      id.hashCode ^ measurementDate.hashCode ^ measurements.hashCode;
}
