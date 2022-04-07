import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:patronaje_mobile_app/domain/models/garments/garment_min.dart';

class Order {
  final int id;
  final DateTime orderDate;
  final int userClient;
  final List<GarmentMin> garments;
  Order({
    required this.id,
    required this.orderDate,
    required this.userClient,
    required this.garments,
  });

  Order copyWith({
    int? id,
    DateTime? orderDate,
    int? userClient,
    List<GarmentMin>? garments,
  }) {
    return Order(
      id: id ?? this.id,
      orderDate: orderDate ?? this.orderDate,
      userClient: userClient ?? this.userClient,
      garments: garments ?? this.garments,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'orderDate': orderDate,
      'userClient': userClient,
      'garments': garments.map((x) => x.toMap()).toList(),
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      id: map['id'],
      orderDate: DateTime.parse(map['orderDate'].toString()),
      userClient: map['userClient'],
      garments: List<GarmentMin>.from(
          map['garments']?.map((x) => GarmentMin.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Order.fromJson(String source) => Order.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Order(id: $id, orderDate: $orderDate, userClient: $userClient, garments: $garments)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Order &&
        o.id == id &&
        o.orderDate == orderDate &&
        o.userClient == userClient &&
        listEquals(o.garments, garments);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        orderDate.hashCode ^
        userClient.hashCode ^
        garments.hashCode;
  }
}
