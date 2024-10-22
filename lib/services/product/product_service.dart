import 'dart:async';

import 'package:dio/dio.dart';

class ProductService {
  const ProductService({required this.dio});
  final Dio dio;
  // final dio = Injector.instance<Dio>();

  Future<dynamic> getProduct(
      String token, String outletId, String registerId, String storeId) async {
    try {
      final res = await dio.get(
          'https://api-catalog.connectpos.com/v0/stores/4501/products?page=1&limit=100&outletId=$outletId&registerId=$registerId&storeId=$storeId',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> updateStores(
      Map<String, dynamic> data, String storeId, String token) async {
    try {
      final res = await dio.put('/v0/stores/4501/outlets/$storeId',
          data: data,
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> newStores(Map<String, dynamic> data, String token) async {
    try {
      final res = await dio.post('/v0/stores/4501/outlets',
          data: data,
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      rethrow;
    }
  }
}
