import 'package:boilerplate/features/home/model/home.dart';

class Product {
  final String id;
  final String name;
  final String sku;
  final String price;
  final String imageUrl;
  final String description;
  final Map<String, PresentmentPrices> presentmentPrices;

  Product({
    required this.id,
    required this.name,
    required this.sku,
    required this.price,
    required this.imageUrl,
    required this.description,
    required this.presentmentPrices,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      sku: json['sku'] ?? '',
      price: json['price'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      description: json['description'] ?? '',
      presentmentPrices: (json['presentmentPrices'] != null &&
              json['presentmentPrices'] is Map<String, dynamic>)
          ? (json['presentmentPrices'] as Map<String, dynamic>).map(
              (key, value) => MapEntry(key, PresentmentPrices.fromJson(value)))
          : {}, // Nếu null thì trả về Map rỗng
    );
  }

  // Phương thức toJson để chuyển đổi thành JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'sku': sku,
      'price': price,
      'imageUrl': imageUrl,
      'description': description,
      'presentmentPrices': presentmentPrices.map((key, value) =>
          MapEntry(key, value.toJson())), // Chuyển lại thành Map
    };
  }
}

class PresentmentPrices {
  final String price;
  final String currencyCode;

  PresentmentPrices({required this.price, required this.currencyCode});

  factory PresentmentPrices.fromJson(Map<String, dynamic> json) {
    return PresentmentPrices(
      price: json['price'].toString(),
      currencyCode: json['currencyCode'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'price': price,
      'currencyCode': currencyCode,
    };
  }
}
