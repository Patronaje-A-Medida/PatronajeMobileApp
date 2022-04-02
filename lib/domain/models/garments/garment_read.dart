import 'dart:convert';

import 'package:flutter/foundation.dart';

class GarmentRead {
  final int id;
  final String nameGarment;
  final String description;
  final double firstRangePrice;
  final double secondRangePrice;
  final String category;
  final String nameAtelier;
  final String atelierAddress;
  final List<String> colors;
  final List<String> fabrics;
  final List<String> occasions;
  final List<String> images;

  GarmentRead({
    required this.id,
    required this.nameGarment,
    required this.description,
    required this.firstRangePrice,
    required this.secondRangePrice,
    required this.category,
    required this.nameAtelier,
    required this.atelierAddress,
    required this.colors,
    required this.fabrics,
    required this.occasions,
    required this.images,
  });

  GarmentRead copyWith({
    int? id,
    String? nameGarment,
    String? description,
    double? firstRangePrice,
    double? secondRangePrice,
    String? category,
    String? nameAtelier,
    String? atelierAddress,
    List<String>? colors,
    List<String>? fabrics,
    List<String>? occasions,
    List<String>? images,
  }) {
    return GarmentRead(
      id: id ?? this.id,
      nameGarment: nameGarment ?? this.nameGarment,
      description: description ?? this.description,
      firstRangePrice: firstRangePrice ?? this.firstRangePrice,
      secondRangePrice: secondRangePrice ?? this.secondRangePrice,
      category: category ?? this.category,
      nameAtelier: nameAtelier ?? this.nameAtelier,
      atelierAddress: atelierAddress ?? this.atelierAddress,
      colors: colors ?? this.colors,
      fabrics: fabrics ?? this.fabrics,
      occasions: occasions ?? this.occasions,
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nameGarment': nameGarment,
      'description': description,
      'firstRangePrice': firstRangePrice,
      'secondRangePrice': secondRangePrice,
      'category': category,
      'nameAtelier': nameAtelier,
      'atelierAddress': atelierAddress,
      'colors': colors,
      'fabrics': fabrics,
      'occasions': occasions,
      'images': images,
    };
  }

  factory GarmentRead.fromMap(Map<String, dynamic> map) {
    return GarmentRead(
      id: map['id'],
      nameGarment: map['nameGarment'],
      description: map['description'],
      firstRangePrice: map['firstRangePrice'],
      secondRangePrice: map['secondRangePrice'],
      category: map['category'],
      nameAtelier: map['nameAtelier'],
      atelierAddress: map['atelierAddress'],
      colors: List<String>.from(map['colors']),
      fabrics: List<String>.from(map['fabrics']),
      occasions: List<String>.from(map['occasions']),
      images: List<String>.from(map['images']),
    );
  }

  String toJson() => json.encode(toMap());

  factory GarmentRead.fromJson(String source) =>
      GarmentRead.fromMap(json.decode(source));

  @override
  String toString() {
    return 'GarmentRead(id: $id, nameGarment: $nameGarment, description: $description, firstRangePrice: $firstRangePrice, secondRangePrice: $secondRangePrice, category: $category, nameAtelier: $nameAtelier, atelierAddress: $atelierAddress, colors: $colors, fabrics: $fabrics, occasions: $occasions, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GarmentRead &&
        other.id == id &&
        other.nameGarment == nameGarment &&
        other.description == description &&
        other.firstRangePrice == firstRangePrice &&
        other.secondRangePrice == secondRangePrice &&
        other.category == category &&
        other.nameAtelier == nameAtelier &&
        other.atelierAddress == atelierAddress &&
        listEquals(other.colors, colors) &&
        listEquals(other.fabrics, fabrics) &&
        listEquals(other.occasions, occasions) &&
        listEquals(other.images, images);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nameGarment.hashCode ^
        description.hashCode ^
        firstRangePrice.hashCode ^
        secondRangePrice.hashCode ^
        category.hashCode ^
        nameAtelier.hashCode ^
        atelierAddress.hashCode ^
        colors.hashCode ^
        fabrics.hashCode ^
        occasions.hashCode ^
        images.hashCode;
  }
}
