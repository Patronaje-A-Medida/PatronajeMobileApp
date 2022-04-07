import 'dart:convert';

class OrderDetailRead {
  final int id;
  final String nameGarment;
  final String color;
  final int quantity;
  final double price;
  final String imageUrl;
  final String orderDetailStatus;

  OrderDetailRead({
    required this.id,
    required this.nameGarment,
    required this.color,
    required this.quantity,
    required this.price,
    required this.imageUrl,
    required this.orderDetailStatus,
  });

  OrderDetailRead copyWith({
    int? id,
    String? nameGarment,
    String? color,
    int? quantity,
    double? price,
    String? imageUrl,
    String? orderDetailStatus,
  }) {
    return OrderDetailRead(
      id: id ?? this.id,
      nameGarment: nameGarment ?? this.nameGarment,
      color: color ?? this.color,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      orderDetailStatus: orderDetailStatus ?? this.orderDetailStatus,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nameGarment': nameGarment,
      'color': color,
      'quantity': quantity,
      'price': price,
      'imageUrl': imageUrl,
      'orderDetailStatus': orderDetailStatus,
    };
  }

  factory OrderDetailRead.fromMap(Map<String, dynamic> map) {
    return OrderDetailRead(
      id: map['id'],
      nameGarment: map['nameGarment'],
      color: map['color'],
      quantity: map['quantity'],
      price: map['price'],
      imageUrl: map['imageUrl'],
      orderDetailStatus: map['orderDetailStatus'],
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderDetailRead.fromJson(String source) =>
      OrderDetailRead.fromMap(json.decode(source));

  @override
  String toString() {
    return 'OrderDetailRead(id: $id, nameGarment: $nameGarment, color: $color, quantity: $quantity, price: $price, imageUrl: $imageUrl, orderDetailStatus: $orderDetailStatus)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is OrderDetailRead &&
        o.id == id &&
        o.nameGarment == nameGarment &&
        o.color == color &&
        o.quantity == quantity &&
        o.price == price &&
        o.imageUrl == imageUrl &&
        o.orderDetailStatus == orderDetailStatus;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nameGarment.hashCode ^
        color.hashCode ^
        quantity.hashCode ^
        price.hashCode ^
        imageUrl.hashCode ^
        orderDetailStatus.hashCode;
  }
}
