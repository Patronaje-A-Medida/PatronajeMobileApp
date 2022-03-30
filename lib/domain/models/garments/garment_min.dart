import 'dart:convert';

class GarmentMin {
  final int id;
  final String nameGarment;
  final double price;
  final String imageUrl;
  final String nameAtelier;
  GarmentMin({
    required this.id,
    required this.nameGarment,
    required this.price,
    required this.imageUrl,
    required this.nameAtelier,
  });

  GarmentMin copyWith({
    int? id,
    String? nameGarment,
    double? price,
    String? imageUrl,
    String? nameAtelier,
  }) {
    return GarmentMin(
      id: id ?? this.id,
      nameGarment: nameGarment ?? this.nameGarment,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      nameAtelier: nameAtelier ?? this.nameAtelier,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nameGarment': nameGarment,
      'price': price,
      'imageUrl': imageUrl,
      'nameAtelier': nameAtelier,
    };
  }

  factory GarmentMin.fromMap(Map<String, dynamic> map) {
    return GarmentMin(
      id: map['id'],
      nameGarment: map['nameGarment'],
      price: map['price'],
      imageUrl: map['imageUrl'],
      nameAtelier: map['nameAtelier'],
    );
  }

  String toJson() => json.encode(toMap());

  factory GarmentMin.fromJson(String source) =>
      GarmentMin.fromMap(json.decode(source));

  @override
  String toString() {
    return 'GarmentMin(id: $id, nameGarment: $nameGarment, price: $price, imageUrl: $imageUrl, nameAtelier: $nameAtelier)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GarmentMin &&
        other.id == id &&
        other.nameGarment == nameGarment &&
        other.price == price &&
        other.imageUrl == imageUrl &&
        other.nameAtelier == nameAtelier;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nameGarment.hashCode ^
        price.hashCode ^
        imageUrl.hashCode ^
        nameAtelier.hashCode;
  }
}
