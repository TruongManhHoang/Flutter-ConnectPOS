import 'package:boilerplate/core/bloc_core/ui_status.dart';
import 'package:boilerplate/core/keys/app_keys.dart';
import 'package:boilerplate/features/customOrderStatus/model/order.dart';
import 'package:boilerplate/services/customOrderStatus/customOrderStatus.dart';
import 'package:boilerplate/services/local_storage_service/local_storage_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';
part 'order_notification.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderService _orderService;
  final LocalStorageService _localStorageService;

  OrderBloc({
    required OrderService orderService,
    required LocalStorageService localStorageService,
  })  : _orderService = orderService,
        _localStorageService = localStorageService,
        super(const OrderState()) {
    on<_LoadList>(_onLoadList);
    // on<_updateOutlet>(_onUpdateOutlet);
    on<_SelectOrder>(_onSelectOrder);
    on<_newOrder>(_onNewOutlet);
    on<_changeLabel>(_onChangeLabel);
    on<_changeColor>(_onChangeColor);
    on<_tempAddOrder>(_onTempAddOrder);
    // on<_changeIsPublished>(_onChangeIsPublished);
  }
  void _onLoadList(_LoadList event, Emitter<OrderState> emit) async {
    try {
      emit(
        state.copyWith(
          loading: true,
          isSuccess: false,
        ),
      );
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      String keyUser =
          _localStorageService.getString(key: AppKeys.customerId) ?? '';

      dynamic response = await _orderService.getOrder(token);
      if (response.data != null && response.data['customStatuses'] != null) {
        List<dynamic> ordersJson = response.data['customStatuses'];
        List<Order> orders =
            ordersJson.map((json) => Order.fromJson(json)).toList();
        emit(
          state.copyWith(
            orders: orders,
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

  void _onChangeLabel(_changeLabel event, Emitter<OrderState> emit) {
    if (event.label != null) {
      emit(
        state.copyWith(
          label: event.label,
        ),
      );
    }
  }

  void _onChangeColor(_changeColor event, Emitter<OrderState> emit) {
    if (event.color != null) {
      emit(
        state.copyWith(
          color: event.color,
        ),
      );
    }
  }

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
  void _onTempAddOrder(_tempAddOrder event, Emitter<OrderState> emit) {
    Order order = Order(
        label: state.label,
        value: state.label,
        color: state.color,
        is_published: true);
    emit(
      state.copyWith(tempOrders: List.from(state.tempOrders)..add(order)),
    );
    print(state.tempOrders);
  }

  void _onNewOutlet(_newOrder event, Emitter<OrderState> emit) async {
    Order order = Order(
        label: state.label,
        value: state.label,
        color: state.color,
        is_published: true);
    try {
      List<Order> ordersToSave = [];
      ordersToSave.add(order);

      print('Order: $ordersToSave');

      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      for (var order in ordersToSave) {
        dynamic payload = order.toJson();
        dynamic response = await _orderService.newOrder(payload, token);
        print('Response: $response');
      }
      emit(
        state.copyWith(
          loading: false,
          isSuccess: true,
          savedOrders: List.from(state.savedOrders)..addAll(state.tempOrders),
          tempOrders: [],
          notification: _NotificationInsertSuccess(
            message: 'Create Successful',
          ),
        ),
      );
      // } else {
      emit(
        state.copyWith(
          loading: false,
          notification: _NotificationInsertFailed(
            message: 'Create failed: Invalid response from server',
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          loading: false,
          notification: _NotificationInsertFailed(
            message: 'Create failed: ${e.toString()}',
          ),
        ),
      );
    }
  }

  void _onSelectOrder(_SelectOrder event, Emitter<OrderState> emit) {
    emit(
      state.copyWith(
        order: event.order,
      ),
    );
    print(state.order);
  }
}
