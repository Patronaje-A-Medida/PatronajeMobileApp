import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:patronaje_mobile_app/domain/models/configuration_types/type_read.dart';

class ConfigurationTypes {
  final List<TypeRead> categories;
  final List<TypeRead> orderStatus;
  final List<TypeRead> fabrics;
  final List<TypeRead> occasions;

  ConfigurationTypes({
    required this.categories,
    required this.orderStatus,
    required this.fabrics,
    required this.occasions,
  });

  ConfigurationTypes copyWith({
    List<TypeRead>? categories,
    List<TypeRead>? orderStatus,
    List<TypeRead>? fabrics,
    List<TypeRead>? occasions,
  }) {
    return ConfigurationTypes(
      categories: categories ?? this.categories,
      orderStatus: orderStatus ?? this.orderStatus,
      fabrics: fabrics ?? this.fabrics,
      occasions: occasions ?? this.occasions,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'categories': categories.map((x) => x.toMap()).toList(),
      'orderStatus': orderStatus.map((x) => x.toMap()).toList(),
      'fabrics': fabrics.map((x) => x.toMap()).toList(),
      'occasions': occasions.map((x) => x.toMap()).toList(),
    };
  }

  factory ConfigurationTypes.fromMap(Map<String, dynamic> map) {
    return ConfigurationTypes(
      categories: List<TypeRead>.from(
          map['categories'].map((x) => TypeRead.fromMap(x))),
      orderStatus: List<TypeRead>.from(
          map['orderStatus'].map((x) => TypeRead.fromMap(x))),
      fabrics:
          List<TypeRead>.from(map['fabrics'].map((x) => TypeRead.fromMap(x))),
      occasions:
          List<TypeRead>.from(map['occasions'].map((x) => TypeRead.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ConfigurationTypes.fromJson(String source) =>
      ConfigurationTypes.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ConfigurationTypes(categories: $categories, orderStatus: $orderStatus, fabrics: $fabrics, occasions: $occasions)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ConfigurationTypes &&
        listEquals(other.categories, categories) &&
        listEquals(other.orderStatus, orderStatus) &&
        listEquals(other.fabrics, fabrics) &&
        listEquals(other.occasions, occasions);
  }

  @override
  int get hashCode {
    return categories.hashCode ^
        orderStatus.hashCode ^
        fabrics.hashCode ^
        occasions.hashCode;
  }
}
