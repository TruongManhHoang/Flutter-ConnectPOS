part of 'product_bloc.dart';

@Freezed()
class ProductState with _$ProductState {
  const factory ProductState({
    @Default(UIInitial()) UIStatus status,
    ProductNotification? notification,
    @Default(false) bool loading,
    @Default([]) List<Product> products,
    @Default([]) List<Product> allProducts,
    @Default([]) List<Product> addCart,
    @Default(false) bool isSuccess,
    @Default('') String errorMessage,
    @Default(true) bool is_published,
    Register? register,
    Product? product,
    @Default('') String textSearch,
  }) = _OrderState;
}
