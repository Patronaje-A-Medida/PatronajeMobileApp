import 'dart:convert';

class TypeRead {
  final String key;
  final int value;
  final String description;
  bool selected;
  TypeRead({
    required this.key,
    required this.value,
    required this.description,
    this.selected = false,
  });

  TypeRead copyWith({
    String? key,
    int? value,
    String? description,
    bool? selected,
  }) {
    return TypeRead(
      key: key ?? this.key,
      value: value ?? this.value,
      description: description ?? this.description,
      selected: selected ?? this.selected,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'key': key,
      'value': value,
      'description': description,
      'selected': selected,
    };
  }

  factory TypeRead.fromMap(Map<String, dynamic> map) {
    return TypeRead(
      key: map['key'],
      value: map['value'],
      description: map['description'],
      selected: false,
    );
  }

  String toJson() => json.encode(toMap());

  factory TypeRead.fromJson(String source) =>
      TypeRead.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TypeRead(key: $key, value: $value, description: $description, selected: $selected)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TypeRead &&
        other.key == key &&
        other.value == value &&
        other.description == description &&
        other.selected == selected;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        value.hashCode ^
        description.hashCode ^
        selected.hashCode;
  }
}
