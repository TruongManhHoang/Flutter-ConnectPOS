part of 'order_bloc.dart';

@Freezed()
class OrderState with _$OrderState {
  const factory OrderState({
    @Default(UIInitial()) UIStatus status,
    OrderNotification? notification,
    @Default(false) bool loading,
    @Default([]) List<Order> orders,
    @Default([]) List<Order> tempOrders,
    @Default([]) List<Order> savedOrders,
    @Default(false) bool isSuccess,
    @Default('') String errorMessage,
    @Default('') String label,
    @Default('') String color,
    @Default('') String value,
    @Default(true) bool is_published,
    Order? order,
  }) = _OrderState;
}
