import 'package:boilerplate/features/home/model/home.dart';

class Order {
  String label;
  String value;
  String color;
  bool is_published;

  Order(
      {required this.label,
      required this.value,
      required this.color,
      required this.is_published});

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
        label: json['label'] ?? '',
        value: json['value'] ?? '',
        color: json['color'] ?? '',
        is_published: json['is_published'] ?? false);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['label'] = label;
    data['value'] = value;
    data['color'] = color;
    data['is_published'] = is_published;
    return data;
  }

  @override
  String toString() {
    return 'Order: label: $label, value: $value, color: $color, is_published: $is_published';
  }
}
