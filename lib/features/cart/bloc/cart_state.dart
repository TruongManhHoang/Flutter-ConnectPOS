part of 'cart_bloc.dart';

@Freezed()
class CartState with _$CartState {
  const factory CartState(
      {@Default(UIInitial()) UIStatus status,
      @Default(false) bool loading,
      @Default([]) List<Item> items,
      @Default(false) bool isSuccess,
      String? errorMessage}) = _CartState;
}
