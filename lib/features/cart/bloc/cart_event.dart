part of 'cart_bloc.dart';

@Freezed()
class CartEvent with _$CartEvent {
  const factory CartEvent.loadList() = _LoadList;
}
