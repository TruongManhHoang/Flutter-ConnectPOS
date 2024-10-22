import 'package:boilerplate/features/product/model/product.dart';
import 'package:boilerplate/injector/injector.dart';
import 'package:boilerplate/injector/modules/dio_module.dart';
import 'package:boilerplate/services/app_service/app_service.dart';
import 'package:boilerplate/services/app_service/app_service_impl.dart';
import 'package:boilerplate/services/auth_service/auth_service.dart';
import 'package:boilerplate/services/cart/cart_service.dart';
import 'package:boilerplate/services/customOrderStatus/customOrderStatus.dart';
import 'package:boilerplate/services/home/home_service.dart';
import 'package:boilerplate/services/local_storage_service/local_storage_service.dart';
import 'package:boilerplate/services/local_storage_service/shared_preferences_service.dart';
import 'package:boilerplate/services/log_service/debug_log_service.dart';
import 'package:boilerplate/services/log_service/log_service.dart';
import 'package:boilerplate/services/outlet_Service/outlet_service.dart';
import 'package:boilerplate/services/product/product_service.dart';

class ServiceModule {
  ServiceModule._();

  static void init() {
    final injector = Injector.instance;

    injector
      ..registerFactory<LogService>(DebugLogService.new)
      ..registerSingleton<LocalStorageService>(
        SharedPreferencesService(
          logService: injector(),
        ),
        signalsReady: true,
      )
      ..registerSingleton<AppService>(
        AppServiceImpl(
          localStorageService: injector(),
        ),
      )
      ..registerSingleton<AuthService>(
          AuthService(dio: injector(instanceName: DioModule.dioInstanceName)))
      ..registerSingleton<StoreService>(
          StoreService(dio: injector(instanceName: DioModule.dioInstanceName)))
      ..registerSingleton<OutletService>(
          OutletService(dio: injector(instanceName: DioModule.dioInstanceName)))
      ..registerSingleton<OrderService>(
          OrderService(dio: injector(instanceName: DioModule.dioInstanceName)))
      ..registerSingleton<ProductService>(ProductService(
          dio: injector(instanceName: DioModule.dioInstanceName)))
      ..registerSingleton<CartService>(
          CartService(dio: injector(instanceName: DioModule.dioInstanceName)));
    ;
  }
}
