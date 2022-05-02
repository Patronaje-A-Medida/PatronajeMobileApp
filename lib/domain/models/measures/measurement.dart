import 'dart:convert';

class Measurement {
  final String nameMeasurement;
  final double value;
  final String acronym;
  final String units;

  Measurement({
    required this.nameMeasurement,
    required this.value,
    required this.acronym,
    required this.units,
  });

  Measurement copyWith({
    String? nameMeasurement,
    double? value,
    String? acronym,
    String? units,
  }) {
    return Measurement(
      nameMeasurement: nameMeasurement ?? this.nameMeasurement,
      value: value ?? this.value,
      acronym: acronym ?? this.acronym,
      units: units ?? this.units,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name_measurement': nameMeasurement,
      'value': value,
      'acronym': acronym,
      'units': units,
    };
  }

  factory Measurement.fromMap(Map<String, dynamic> map) {
    return Measurement(
      nameMeasurement: map['name_measurement'],
      value: map['value'],
      acronym: map['acronym'],
      units: map['units'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Measurement.fromJson(String source) =>
      Measurement.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Measurement(nameMeasurement: $nameMeasurement, value: $value, acronym: $acronym, units: $units)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Measurement &&
        other.nameMeasurement == nameMeasurement &&
        other.value == value &&
        other.acronym == acronym &&
        other.units == units;
  }

  @override
  int get hashCode {
    return nameMeasurement.hashCode ^
        value.hashCode ^
        acronym.hashCode ^
        units.hashCode;
  }
}
