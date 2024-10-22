import 'dart:async';

import 'package:dio/dio.dart';

class StoreService {
  const StoreService({required this.dio});
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
}
