import 'package:dio/dio.dart';

class OrderService {
  const OrderService({required this.dio});
  final Dio dio;

  Future<dynamic> getOrder(String token) async {
    try {
      final res = await dio.get(
          'https://api-setting.connectpos.com/v0/stores/4501/setting/sales-order',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> newOrder(Map<String, dynamic> data, String token) async {
    try {
      final res = await dio.post(
          'https://api-setting.connectpos.com/v0/stores/4501/setting/sales-order',
          data: data,
          options: Options(headers: {'Authorization': 'Bearer $token'}));
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> deleteOrder(String orderId, String token) async {
    try {
      final res = await dio.delete(
          'https://api-setting.connectpos.com/v0/stores/4501/setting/sales-order/$orderId',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
    } catch (e) {
      rethrow;
    }
  }
}
