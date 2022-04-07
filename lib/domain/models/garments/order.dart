import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:patronaje_mobile_app/domain/models/garments/order_detail_read.dart';

class Order {
  final int id;
  final int userClientId;
  final String nameAtelier;
  final String codeOrder;
  final double price;
  final DateTime orderDate;
  final String orderStatus;
  final List<OrderDetailRead> details;

  Order({
    required this.id,
    required this.userClientId,
    required this.nameAtelier,
    required this.codeOrder,
    required this.price,
    required this.orderDate,
    required this.orderStatus,
    required this.details,
  });

  Order copyWith({
    int? id,
    int? userClientId,
    String? nameAtelier,
    String? codeOrder,
    double? price,
    DateTime? orderDate,
    String? orderStatus,
    List<OrderDetailRead>? details,
  }) {
    return Order(
      id: id ?? this.id,
      userClientId: userClientId ?? this.userClientId,
      nameAtelier: nameAtelier ?? this.nameAtelier,
      codeOrder: codeOrder ?? this.codeOrder,
      price: price ?? this.price,
      orderDate: orderDate ?? this.orderDate,
      orderStatus: orderStatus ?? this.orderStatus,
      details: details ?? this.details,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userClientId': userClientId,
      'nameAtelier': nameAtelier,
      'codeOrder': codeOrder,
      'price': price,
      'orderDate': orderDate,
      'orderStatus': orderStatus,
      'details': details.map((x) => x.toMap()).toList(),
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      id: map['id'],
      userClientId: map['userClientId'],
      nameAtelier: map['nameAtelier'],
      codeOrder: map['codeOrder'],
      price: map['price'],
      orderDate: DateTime.parse(map['orderDate'].toString()),
      orderStatus: map['orderStatus'],
      details: List<OrderDetailRead>.from(
          map['details']?.map((x) => OrderDetailRead.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Order.fromJson(String source) => Order.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Order(id: $id, userClientId: $userClientId, nameAtelier: $nameAtelier, codeOrder: $codeOrder, price: $price, orderDate: $orderDate, orderStatus: $orderStatus, details: $details)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Order &&
        o.id == id &&
        o.userClientId == userClientId &&
        o.nameAtelier == nameAtelier &&
        o.codeOrder == codeOrder &&
        o.price == price &&
        o.orderDate == orderDate &&
        o.orderStatus == orderStatus &&
        listEquals(o.details, details);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        userClientId.hashCode ^
        nameAtelier.hashCode ^
        codeOrder.hashCode ^
        price.hashCode ^
        orderDate.hashCode ^
        orderStatus.hashCode ^
        details.hashCode;
  }
}
