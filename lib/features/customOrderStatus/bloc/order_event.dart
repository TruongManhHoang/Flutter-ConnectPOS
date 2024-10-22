part of 'order_bloc.dart';

@Freezed()
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.loadList() = _LoadList;

  const factory OrderEvent.newOrder() = _newOrder;

  const factory OrderEvent.updateOrder() = _updateOrder;

  const factory OrderEvent.deleteOrder() = _deleteOrder;

  const factory OrderEvent.changeLabel(String label) = _changeLabel;

  const factory OrderEvent.changeColors(String color) = _changeColor;

  const factory OrderEvent.changeIsPublished(bool is_published) =
      _changeIsPublished;

  const factory OrderEvent.tempAddOrder() = _tempAddOrder;

  const factory OrderEvent.selectOrder(Order order) = _SelectOrder;
}
