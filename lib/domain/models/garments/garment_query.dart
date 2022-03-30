import 'dart:convert';

import 'package:flutter/foundation.dart';

class GarmentQuery {
  final List<int> categories;
  final List<int> occasions;
  final List<bool> availabilities;
  final String? filterString;

  GarmentQuery({
    this.categories = const [],
    this.occasions = const [],
    this.availabilities = const [true],
    this.filterString,
  });

  GarmentQuery copyWith({
    List<int>? categories,
    List<int>? occasions,
    List<bool>? availabilities,
    String? filterString,
  }) {
    return GarmentQuery(
      categories: categories ?? this.categories,
      occasions: occasions ?? this.occasions,
      availabilities: availabilities ?? this.availabilities,
      filterString: filterString ?? this.filterString,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'categories': categories,
      'occasions': occasions,
      'availabilities': availabilities,
      'filterString': filterString,
    };
  }

  factory GarmentQuery.fromMap(Map<String, dynamic> map) {
    return GarmentQuery(
      categories: List<int>.from(map['categories']),
      occasions: List<int>.from(map['occasions']),
      availabilities: List<bool>.from(map['availabilities']),
      filterString: map['filterString'],
    );
  }

  String toJson() => json.encode(toMap());

  factory GarmentQuery.fromJson(String source) =>
      GarmentQuery.fromMap(json.decode(source));

  @override
  String toString() {
    return 'GarmentQuery(categories: $categories, occasions: $occasions, availabilities: $availabilities, filterString: $filterString)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GarmentQuery &&
        listEquals(other.categories, categories) &&
        listEquals(other.occasions, occasions) &&
        listEquals(other.availabilities, availabilities) &&
        other.filterString == filterString;
  }

  @override
  int get hashCode {
    return categories.hashCode ^
        occasions.hashCode ^
        availabilities.hashCode ^
        filterString.hashCode;
  }
}
