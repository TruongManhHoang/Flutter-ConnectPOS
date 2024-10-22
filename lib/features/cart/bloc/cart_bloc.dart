import 'dart:math';

import 'package:boilerplate/core/bloc_core/ui_status.dart';
import 'package:boilerplate/core/keys/app_keys.dart';
import 'package:boilerplate/features/home/model/home.dart';
import 'package:boilerplate/services/app_service/app_service.dart';
import 'package:boilerplate/services/cart/cart_service.dart';
import 'package:boilerplate/services/home/home_service.dart';
import 'package:boilerplate/services/local_storage_service/local_storage_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';
part 'cart_notification.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartService _cartService;
  final LocalStorageService _localStorageService;

  CartBloc({
    required CartService cartService,
    required LocalStorageService localStorageService,
  })  : _cartService = cartService,
        _localStorageService = localStorageService,
        super(const CartState()) {
    // on<_LoadList>(_onLoadList);
  }
  // void _onLoadList(_LoadList event, Emitter<HomeState> emit) async {
  //   try {
  //     emit(
  //       state.copyWith(
  //         loading: true,
  //         isSuccess: false,
  //       ),
  //     );
  //     String token = _localStorageService.getString(key: AppKeys.token) ?? '';
  //     String keyUser =
  //         _localStorageService.getString(key: AppKeys.customerId) ?? '';

  //     dynamic response = await _storeService.getStores(token, keyUser);
  //     // print(response);
  //     if (response.data != null && response.data['items'] != null) {
  //       List<dynamic> itemsJson = response.data['items'];
  //       List<Item> items =
  //           itemsJson.map((json) => Item.fromJson(json)).toList();
  //       emit(
  //         state.copyWith(
  //           items: items,
  //           loading: false,
  //           isSuccess: true,
  //         ),
  //       );
  //     } else {
  //       throw Exception('Response does not contain "items"');
  //     }
  //   } catch (e) {
  //     emit(
  //       state.copyWith(
  //         loading: false,
  //         isSuccess: false,
  //         errorMessage: 'Failed to load items: ${e.toString()}',
  //       ),
  //     );
  //   }
  // }
}
