part of 'product_bloc.dart';

@Freezed()
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.loadList() = _LoadList;
  const factory ProductEvent.selectRegister(Register register) =
      _SelectRegister;
  const factory ProductEvent.selectProduct(Product product) = _SelectProduct;
  const factory ProductEvent.searchProduct(String name) = _searchProduct;

  const factory ProductEvent.addProductToCart(Product product) =
      _addProductToCart;
}
