import 'dart:convert';

import 'package:boilerplate/core/bloc_core/ui_status.dart';
import 'package:boilerplate/core/keys/app_keys.dart';
import 'package:boilerplate/features/customOrderStatus/model/order.dart';
import 'package:boilerplate/features/home/model/home.dart';
import 'package:boilerplate/features/outlet&Register/model/outlet.dart';
import 'package:boilerplate/features/product/model/product.dart';
import 'package:boilerplate/services/customOrderStatus/customOrderStatus.dart';
import 'package:boilerplate/services/home/home_service.dart';
import 'package:boilerplate/services/local_storage_service/local_storage_service.dart';
import 'package:boilerplate/services/outlet_Service/outlet_service.dart';
import 'package:boilerplate/services/product/product_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';
part 'product_notification.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductService _productService;
  final LocalStorageService _localStorageService;

  ProductBloc({
    required ProductService productService,
    required LocalStorageService localStorageService,
  })  : _productService = productService,
        _localStorageService = localStorageService,
        super(const ProductState()) {
    on<_LoadList>(_onLoadList);
    on<_SelectRegister>(_onSelectRegister);
    on<_SelectProduct>(_onSelectProduct);
    on<_searchProduct>(_onSearchProduct);
    on<_addProductToCart>(_onAddProductToCart);
  }
  void _onSelectRegister(_SelectRegister event, Emitter<ProductState> emit) {
    if (event.register != null) {
      emit(state.copyWith(register: event.register));
    }
  }

  void _onSearchProduct(_searchProduct event, Emitter<ProductState> emit) {
    final filteredProducts = state.allProducts.where((product) {
      return product.name.toLowerCase().contains(event.name.toLowerCase());
    }).toList();
    emit(state.copyWith(products: filteredProducts));
  }

  void _onSelectProduct(_SelectProduct event, Emitter<ProductState> emit) {
    emit(state.copyWith(
      loading: true,
      isSuccess: false,
    ));
    if (event.product != null) {
      emit(state.copyWith(
          product: event.product, loading: false, isSuccess: true));
    }
  }

  void _onAddProductToCart(
      _addProductToCart event, Emitter<ProductState> emit) {
    emit(state.copyWith(
      loading: true,
      isSuccess: false,
    ));

    if (event.product != null) {
      final updatedCart = List<Product>.from(state.addCart)..add(event.product);

      emit(state.copyWith(
        addCart: updatedCart,
        loading: false,
        isSuccess: true,
      ));
    }
  }

  void _onLoadList(_LoadList event, Emitter<ProductState> emit) async {
    try {
      emit(
        state.copyWith(
          loading: true,
          isSuccess: false,
        ),
      );
      String registerId = state.register?.id ?? '';
      String storeId = state.register?.storeId ?? '';
      String outletId = state.register?.id ?? '';

      String token = _localStorageService.getString(key: AppKeys.token) ?? '';

      dynamic response = await _productService.getProduct(
          token, outletId, registerId, storeId);
      if (response.data != null && response.data['items'] != null) {
        List<dynamic> productJson = response.data['items'];
        List<Product> products =
            productJson.map((json) => Product.fromJson(json)).toList();
        print(state.addCart);
        emit(
          state.copyWith(
            products: products,
            allProducts: products,
            loading: false,
            isSuccess: true,
          ),
        );
      } else {
        throw Exception('Response does not contain "items"');
      }
    } catch (e) {
      emit(
        state.copyWith(
          loading: false,
          isSuccess: false,
          errorMessage: 'Failed to load items: ${e.toString()}',
        ),
      );
    }
  }

  // void _onChangeLabel(_changeLabel event, Emitter<OrderState> emit) {
  //   if (event.label != null) {
  //     emit(
  //       state.copyWith(
  //         label: event.label,
  //       ),
  //     );
  //   }
  // }

  // void _onChangeColor(_changeColor event, Emitter<OrderState> emit) {
  //   if (event.color != null) {
  //     emit(
  //       state.copyWith(
  //         color: event.color,
  //       ),
  //     );
  //   }
  // }

  // void _onChangeIsPublished(
  //     _changeIsPublished event, Emitter<OrderState> emit) {
  //   if (event.is_published != null) {
  //     emit(
  //       state.copyWith(
  //         is_published: event.is_published,
  //       ),
  //     );
  //   }
  // }
  // void _onTempAddOrder(_tempAddOrder event, Emitter<OrderState> emit) {
  //   Order order = Order(
  //       label: state.label,
  //       value: state.label,
  //       color: state.color,
  //       is_published: true);
  //   emit(
  //     state.copyWith(tempOrders: List.from(state.tempOrders)..add(order)),
  //   );
  //   print(state.tempOrders);
  // }

  // void _onNewOutlet(_newOrder event, Emitter<OrderState> emit) async {
  //   Order order = Order(
  //       label: state.label,
  //       value: state.label,
  //       color: state.color,
  //       is_published: true);
  //   try {
  //     List<Order> ordersToSave = [];
  //     ordersToSave.add(order);

  //     print('Order: $ordersToSave');

  //     String token = _localStorageService.getString(key: AppKeys.token) ?? '';
  //     for (var order in ordersToSave) {
  //       dynamic payload = order.toJson();
  //       dynamic response = await _orderService.newOrder(payload, token);
  //       print('Response: $response');
  //     }
  //     emit(
  //       state.copyWith(
  //         loading: false,
  //         isSuccess: true,
  //         savedOrders: List.from(state.savedOrders)..addAll(state.tempOrders),
  //         tempOrders: [],
  //         notification: _NotificationInsertSuccess(
  //           message: 'Create Successful',
  //         ),
  //       ),
  //     );
  //     // } else {
  //     emit(
  //       state.copyWith(
  //         loading: false,
  //         notification: _NotificationInsertFailed(
  //           message: 'Create failed: Invalid response from server',
  //         ),
  //       ),
  //     );
  //   } catch (e) {
  //     emit(
  //       state.copyWith(
  //         loading: false,
  //         notification: _NotificationInsertFailed(
  //           message: 'Create failed: ${e.toString()}',
  //         ),
  //       ),
  //     );
  //   }
  // }

  // void _onSelectOrder(_SelectOrder event, Emitter<OrderState> emit) {
  //   emit(
  //     state.copyWith(
  //       order: event.order,
  //     ),
  //   );
  //   print(state.order);
  // }
}
