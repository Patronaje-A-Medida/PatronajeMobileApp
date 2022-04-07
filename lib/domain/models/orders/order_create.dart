import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:patronaje_mobile_app/domain/models/orders/order_detail_create.dart';

class OrderCreate {
  final DateTime orderDate;
  final int userClientId;
  final List<OrderDetailCreate> details;

  OrderCreate({
    required this.orderDate,
    required this.userClientId,
    required this.details,
  });

  OrderCreate copyWith({
    DateTime? orderDate,
    int? userClientId,
    List<OrderDetailCreate>? details,
  }) {
    return OrderCreate(
      orderDate: orderDate ?? this.orderDate,
      userClientId: userClientId ?? this.userClientId,
      details: details ?? this.details,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'orderDate': orderDate.toString(),
      'userClientId': userClientId,
      'details': details.map((x) => x.toMap()).toList(),
    };
  }

  factory OrderCreate.fromMap(Map<String, dynamic> map) {
    return OrderCreate(
      orderDate: map['orderDate'],
      userClientId: map['userClientId'],
      details: List<OrderDetailCreate>.from(
          map['details'].map((x) => OrderDetailCreate.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderCreate.fromJson(String source) =>
      OrderCreate.fromMap(json.decode(source));

  @override
  String toString() =>
      'OrderCreate(orderDate: $orderDate, userClientId: $userClientId, details: $details)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OrderCreate &&
        other.orderDate == orderDate &&
        other.userClientId == userClientId &&
        listEquals(other.details, details);
  }

  @override
  int get hashCode =>
      orderDate.hashCode ^ userClientId.hashCode ^ details.hashCode;
}
