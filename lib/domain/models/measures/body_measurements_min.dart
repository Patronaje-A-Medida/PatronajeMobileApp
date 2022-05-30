import 'dart:convert';

class BodyMeasurementsMin {
  final String id;
  final DateTime measurementDate;
  final double height;
  final double bust;
  final double waist;
  final double hip;

  BodyMeasurementsMin({
    required this.id,
    required this.measurementDate,
    required this.height,
    required this.bust,
    required this.waist,
    required this.hip,
  });

  BodyMeasurementsMin copyWith({
    String? id,
    DateTime? measurementDate,
    double? height,
    double? bust,
    double? waist,
    double? hip,
  }) {
    return BodyMeasurementsMin(
      id: id ?? this.id,
      measurementDate: measurementDate ?? this.measurementDate,
      height: height ?? this.height,
      bust: bust ?? this.bust,
      waist: waist ?? this.waist,
      hip: hip ?? this.hip,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'measurement_date': measurementDate,
      'height': height,
      'bust': bust,
      'waist': waist,
      'hip': hip,
    };
  }

  factory BodyMeasurementsMin.fromMap(Map<String, dynamic> map) {
    return BodyMeasurementsMin(
      id: map['id'],
      measurementDate: DateTime.parse(map['measurement_date'].toString()),
      height: map['height'],
      bust: map['bust'],
      waist: map['waist'],
      hip: map['hip'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BodyMeasurementsMin.fromJson(String source) =>
      BodyMeasurementsMin.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BodyMeasurementsMin(id: $id, measurementDate: $measurementDate, height: $height, bust: $bust, waist: $waist, hip: $hip)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BodyMeasurementsMin &&
        other.id == id &&
        other.measurementDate == measurementDate &&
        other.height == height &&
        other.bust == bust &&
        other.waist == waist &&
        other.hip == hip;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        measurementDate.hashCode ^
        height.hashCode ^
        bust.hashCode ^
        waist.hashCode ^
        hip.hashCode;
  }
}
