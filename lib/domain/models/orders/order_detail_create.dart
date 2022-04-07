import 'dart:convert';

class OrderDetailCreate {
  final int garmentId;
  final String color;
  final int quantity;
  OrderDetailCreate({
    required this.garmentId,
    required this.color,
    this.quantity = 1,
  });

  OrderDetailCreate copyWith({
    int? garmentId,
    String? color,
    int? quantity,
  }) {
    return OrderDetailCreate(
      garmentId: garmentId ?? this.garmentId,
      color: color ?? this.color,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'garmentId': garmentId,
      'color': color,
      'quantity': quantity,
    };
  }

  factory OrderDetailCreate.fromMap(Map<String, dynamic> map) {
    return OrderDetailCreate(
      garmentId: map['garmentId'],
      color: map['color'],
      quantity: map['quantity'],
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderDetailCreate.fromJson(String source) =>
      OrderDetailCreate.fromMap(json.decode(source));

  @override
  String toString() =>
      'OrderDetailCreate(garmentId: $garmentId, color: $color, quantity: $quantity)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OrderDetailCreate &&
        other.garmentId == garmentId &&
        other.color == color &&
        other.quantity == quantity;
  }

  @override
  int get hashCode => garmentId.hashCode ^ color.hashCode ^ quantity.hashCode;
}
