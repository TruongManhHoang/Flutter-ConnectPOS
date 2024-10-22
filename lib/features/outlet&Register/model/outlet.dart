class Outlet {
  String id;
  String name;
  String street;
  String city;
  String country;
  String region;
  String zip;
  String telephone;
  bool status;
  Outlet({
    required this.id,
    required this.name,
    required this.street,
    required this.city,
    required this.country,
    required this.region,
    required this.zip,
    required this.telephone,
    required this.status,
  });
  @override
  String toString() {
    return 'Outlet(id: $id, name: $name, street: $street, city: $city, country: $country, region: $region, zip: $zip, telephone: $telephone, status: ${status ? 'active' : 'inactive'})';
  }

  factory Outlet.fromJson(Map<String, dynamic> json) {
    return Outlet(
        id: json['id'] ?? '',
        name: json['name'] ?? '',
        street: json['street'] ?? '',
        city: json['city'] ?? '',
        country: json['country'] ?? '',
        region: json['region'] ?? '',
        zip: json['zip'] ?? '',
        telephone: json['telephone'] ?? '',
        status: json['status'] ?? false);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['street'] = street;
    data['city'] = city;
    data['country'] = country;
    data['region'] = region;
    data['zip'] = zip;
    data['telephone'] = telephone;
    data['status'] = status;
    return data;
  }
}
