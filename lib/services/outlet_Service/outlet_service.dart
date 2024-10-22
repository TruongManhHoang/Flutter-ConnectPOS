import 'dart:async';

import 'package:dio/dio.dart';

class OutletService {
  const OutletService({required this.dio});
  final Dio dio;
  // final dio = Injector.instance<Dio>();

  Future<dynamic> getStores(String token, String customerId) async {
    try {
      final res = await dio.get(
          '/v0/stores/4501/outlets?customerId=$customerId',
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
