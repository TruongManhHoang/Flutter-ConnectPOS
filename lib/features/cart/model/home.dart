class Item {
  final String id;
  final String name;
  final String storeId;
  final String street;
  final String city;
  final String country;
  final String region;
  final List<Register> registers;

  Item({
    required this.id,
    required this.name,
    required this.storeId,
    required this.street,
    required this.city,
    required this.country,
    required this.region,
    required this.registers,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      storeId: json['storeId'] ?? '',
      street: json['street'] ?? '',
      city: json['city'] ?? '',
      country: json['country'] ?? '',
      region: json['region'] ?? '',
      registers: (json['registers'] as List<dynamic>)
          .map((e) => Register.fromJson(e))
          .toList(),
    );
  }
}

class Register {
  final String id;
  final String outletId;
  final String storeId;
  final String name;
  final bool enabled;
  final bool isPrintReceipt;
  final String createdAt;
  final String updatedAt;
  final String uuid;
  final String outletUuid;

  Register({
    required this.id,
    required this.outletId,
    required this.storeId,
    required this.name,
    required this.enabled,
    required this.isPrintReceipt,
    required this.createdAt,
    required this.updatedAt,
    required this.uuid,
    required this.outletUuid,
  });
  @override
  String toString() {
    return '$name';
  }

  factory Register.fromJson(Map<String, dynamic> json) {
    return Register(
      id: json['id'] ?? '',
      outletId: json['outletId'] ?? '',
      storeId: json['storeId'] ?? '',
      name: json['name'] ?? '',
      enabled: json['enabled'] ?? false,
      isPrintReceipt: json['isPrintReceipt'] ?? false,
      createdAt: json['createdAt'] ?? '',
      updatedAt: json['updatedAt'] ?? '',
      uuid: json['uuid'] ?? '',
      outletUuid: json['outletUuid'] ?? '',
    );
  }
}
