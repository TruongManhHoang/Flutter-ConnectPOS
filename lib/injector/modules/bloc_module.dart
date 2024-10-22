import 'package:boilerplate/features/app/bloc/app_bloc.dart';
import 'package:boilerplate/features/cart/bloc/cart_bloc.dart';
import 'package:boilerplate/features/customOrderStatus/bloc/order_bloc.dart';
import 'package:boilerplate/features/home/bloc/home_bloc.dart';
import 'package:boilerplate/features/login/bloc/login_bloc.dart';
import 'package:boilerplate/features/outlet&Register/bloc/outlet_bloc.dart';
import 'package:boilerplate/features/product/bloc/product_bloc.dart';
import 'package:boilerplate/injector/injector.dart';

class BlocModule {
  BlocModule._();

  static void init() {
    final injector = Injector.instance;

    injector
      ..registerLazySingleton<AppBloc>(
        () => AppBloc(
          appService: injector(),
          logService: injector(),
        ),
      )
      ..registerLazySingleton<LoginBloc>(
        () => LoginBloc(
          authService: injector(),
          localStorageService: injector(),
        ),
      )
      ..registerLazySingleton<HomeBloc>(
        () =>
            HomeBloc(storeService: injector(), localStorageService: injector()),
      )
      ..registerLazySingleton<OutletBloc>(
        () => OutletBloc(
            outletService: injector(), localStorageService: injector()),
      )
      ..registerLazySingleton<OrderBloc>(
        () => OrderBloc(
            orderService: injector(), localStorageService: injector()),
      )
      ..registerLazySingleton<ProductBloc>(
        () => ProductBloc(
            productService: injector(), localStorageService: injector()),
      )
      ..registerLazySingleton<CartBloc>(
        () =>
            CartBloc(cartService: injector(), localStorageService: injector()),
      );
  }
}
