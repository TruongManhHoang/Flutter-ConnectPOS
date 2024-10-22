// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadList,
    required TResult Function(Register register) selectRegister,
    required TResult Function(Product product) selectProduct,
    required TResult Function(String name) searchProduct,
    required TResult Function(Product product) addProductToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadList,
    TResult? Function(Register register)? selectRegister,
    TResult? Function(Product product)? selectProduct,
    TResult? Function(String name)? searchProduct,
    TResult? Function(Product product)? addProductToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadList,
    TResult Function(Register register)? selectRegister,
    TResult Function(Product product)? selectProduct,
    TResult Function(String name)? searchProduct,
    TResult Function(Product product)? addProductToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadList value) loadList,
    required TResult Function(_SelectRegister value) selectRegister,
    required TResult Function(_SelectProduct value) selectProduct,
    required TResult Function(_searchProduct value) searchProduct,
    required TResult Function(_addProductToCart value) addProductToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadList value)? loadList,
    TResult? Function(_SelectRegister value)? selectRegister,
    TResult? Function(_SelectProduct value)? selectProduct,
    TResult? Function(_searchProduct value)? searchProduct,
    TResult? Function(_addProductToCart value)? addProductToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadList value)? loadList,
    TResult Function(_SelectRegister value)? selectRegister,
    TResult Function(_SelectProduct value)? selectProduct,
    TResult Function(_searchProduct value)? searchProduct,
    TResult Function(_addProductToCart value)? addProductToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadListImplCopyWith<$Res> {
  factory _$$LoadListImplCopyWith(
          _$LoadListImpl value, $Res Function(_$LoadListImpl) then) =
      __$$LoadListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadListImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$LoadListImpl>
    implements _$$LoadListImplCopyWith<$Res> {
  __$$LoadListImplCopyWithImpl(
      _$LoadListImpl _value, $Res Function(_$LoadListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadListImpl implements _LoadList {
  const _$LoadListImpl();

  @override
  String toString() {
    return 'ProductEvent.loadList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadList,
    required TResult Function(Register register) selectRegister,
    required TResult Function(Product product) selectProduct,
    required TResult Function(String name) searchProduct,
    required TResult Function(Product product) addProductToCart,
  }) {
    return loadList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadList,
    TResult? Function(Register register)? selectRegister,
    TResult? Function(Product product)? selectProduct,
    TResult? Function(String name)? searchProduct,
    TResult? Function(Product product)? addProductToCart,
  }) {
    return loadList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadList,
    TResult Function(Register register)? selectRegister,
    TResult Function(Product product)? selectProduct,
    TResult Function(String name)? searchProduct,
    TResult Function(Product product)? addProductToCart,
    required TResult orElse(),
  }) {
    if (loadList != null) {
      return loadList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadList value) loadList,
    required TResult Function(_SelectRegister value) selectRegister,
    required TResult Function(_SelectProduct value) selectProduct,
    required TResult Function(_searchProduct value) searchProduct,
    required TResult Function(_addProductToCart value) addProductToCart,
  }) {
    return loadList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadList value)? loadList,
    TResult? Function(_SelectRegister value)? selectRegister,
    TResult? Function(_SelectProduct value)? selectProduct,
    TResult? Function(_searchProduct value)? searchProduct,
    TResult? Function(_addProductToCart value)? addProductToCart,
  }) {
    return loadList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadList value)? loadList,
    TResult Function(_SelectRegister value)? selectRegister,
    TResult Function(_SelectProduct value)? selectProduct,
    TResult Function(_searchProduct value)? searchProduct,
    TResult Function(_addProductToCart value)? addProductToCart,
    required TResult orElse(),
  }) {
    if (loadList != null) {
      return loadList(this);
    }
    return orElse();
  }
}

abstract class _LoadList implements ProductEvent {
  const factory _LoadList() = _$LoadListImpl;
}

/// @nodoc
abstract class _$$SelectRegisterImplCopyWith<$Res> {
  factory _$$SelectRegisterImplCopyWith(_$SelectRegisterImpl value,
          $Res Function(_$SelectRegisterImpl) then) =
      __$$SelectRegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Register register});
}

/// @nodoc
class __$$SelectRegisterImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$SelectRegisterImpl>
    implements _$$SelectRegisterImplCopyWith<$Res> {
  __$$SelectRegisterImplCopyWithImpl(
      _$SelectRegisterImpl _value, $Res Function(_$SelectRegisterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? register = null,
  }) {
    return _then(_$SelectRegisterImpl(
      null == register
          ? _value.register
          : register // ignore: cast_nullable_to_non_nullable
              as Register,
    ));
  }
}

/// @nodoc

class _$SelectRegisterImpl implements _SelectRegister {
  const _$SelectRegisterImpl(this.register);

  @override
  final Register register;

  @override
  String toString() {
    return 'ProductEvent.selectRegister(register: $register)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectRegisterImpl &&
            (identical(other.register, register) ||
                other.register == register));
  }

  @override
  int get hashCode => Object.hash(runtimeType, register);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectRegisterImplCopyWith<_$SelectRegisterImpl> get copyWith =>
      __$$SelectRegisterImplCopyWithImpl<_$SelectRegisterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadList,
    required TResult Function(Register register) selectRegister,
    required TResult Function(Product product) selectProduct,
    required TResult Function(String name) searchProduct,
    required TResult Function(Product product) addProductToCart,
  }) {
    return selectRegister(register);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadList,
    TResult? Function(Register register)? selectRegister,
    TResult? Function(Product product)? selectProduct,
    TResult? Function(String name)? searchProduct,
    TResult? Function(Product product)? addProductToCart,
  }) {
    return selectRegister?.call(register);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadList,
    TResult Function(Register register)? selectRegister,
    TResult Function(Product product)? selectProduct,
    TResult Function(String name)? searchProduct,
    TResult Function(Product product)? addProductToCart,
    required TResult orElse(),
  }) {
    if (selectRegister != null) {
      return selectRegister(register);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadList value) loadList,
    required TResult Function(_SelectRegister value) selectRegister,
    required TResult Function(_SelectProduct value) selectProduct,
    required TResult Function(_searchProduct value) searchProduct,
    required TResult Function(_addProductToCart value) addProductToCart,
  }) {
    return selectRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadList value)? loadList,
    TResult? Function(_SelectRegister value)? selectRegister,
    TResult? Function(_SelectProduct value)? selectProduct,
    TResult? Function(_searchProduct value)? searchProduct,
    TResult? Function(_addProductToCart value)? addProductToCart,
  }) {
    return selectRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadList value)? loadList,
    TResult Function(_SelectRegister value)? selectRegister,
    TResult Function(_SelectProduct value)? selectProduct,
    TResult Function(_searchProduct value)? searchProduct,
    TResult Function(_addProductToCart value)? addProductToCart,
    required TResult orElse(),
  }) {
    if (selectRegister != null) {
      return selectRegister(this);
    }
    return orElse();
  }
}

abstract class _SelectRegister implements ProductEvent {
  const factory _SelectRegister(final Register register) = _$SelectRegisterImpl;

  Register get register;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectRegisterImplCopyWith<_$SelectRegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectProductImplCopyWith<$Res> {
  factory _$$SelectProductImplCopyWith(
          _$SelectProductImpl value, $Res Function(_$SelectProductImpl) then) =
      __$$SelectProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$SelectProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$SelectProductImpl>
    implements _$$SelectProductImplCopyWith<$Res> {
  __$$SelectProductImplCopyWithImpl(
      _$SelectProductImpl _value, $Res Function(_$SelectProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$SelectProductImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$SelectProductImpl implements _SelectProduct {
  const _$SelectProductImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductEvent.selectProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectProductImplCopyWith<_$SelectProductImpl> get copyWith =>
      __$$SelectProductImplCopyWithImpl<_$SelectProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadList,
    required TResult Function(Register register) selectRegister,
    required TResult Function(Product product) selectProduct,
    required TResult Function(String name) searchProduct,
    required TResult Function(Product product) addProductToCart,
  }) {
    return selectProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadList,
    TResult? Function(Register register)? selectRegister,
    TResult? Function(Product product)? selectProduct,
    TResult? Function(String name)? searchProduct,
    TResult? Function(Product product)? addProductToCart,
  }) {
    return selectProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadList,
    TResult Function(Register register)? selectRegister,
    TResult Function(Product product)? selectProduct,
    TResult Function(String name)? searchProduct,
    TResult Function(Product product)? addProductToCart,
    required TResult orElse(),
  }) {
    if (selectProduct != null) {
      return selectProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadList value) loadList,
    required TResult Function(_SelectRegister value) selectRegister,
    required TResult Function(_SelectProduct value) selectProduct,
    required TResult Function(_searchProduct value) searchProduct,
    required TResult Function(_addProductToCart value) addProductToCart,
  }) {
    return selectProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadList value)? loadList,
    TResult? Function(_SelectRegister value)? selectRegister,
    TResult? Function(_SelectProduct value)? selectProduct,
    TResult? Function(_searchProduct value)? searchProduct,
    TResult? Function(_addProductToCart value)? addProductToCart,
  }) {
    return selectProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadList value)? loadList,
    TResult Function(_SelectRegister value)? selectRegister,
    TResult Function(_SelectProduct value)? selectProduct,
    TResult Function(_searchProduct value)? searchProduct,
    TResult Function(_addProductToCart value)? addProductToCart,
    required TResult orElse(),
  }) {
    if (selectProduct != null) {
      return selectProduct(this);
    }
    return orElse();
  }
}

abstract class _SelectProduct implements ProductEvent {
  const factory _SelectProduct(final Product product) = _$SelectProductImpl;

  Product get product;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectProductImplCopyWith<_$SelectProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$searchProductImplCopyWith<$Res> {
  factory _$$searchProductImplCopyWith(
          _$searchProductImpl value, $Res Function(_$searchProductImpl) then) =
      __$$searchProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$searchProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$searchProductImpl>
    implements _$$searchProductImplCopyWith<$Res> {
  __$$searchProductImplCopyWithImpl(
      _$searchProductImpl _value, $Res Function(_$searchProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$searchProductImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$searchProductImpl implements _searchProduct {
  const _$searchProductImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ProductEvent.searchProduct(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$searchProductImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$searchProductImplCopyWith<_$searchProductImpl> get copyWith =>
      __$$searchProductImplCopyWithImpl<_$searchProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadList,
    required TResult Function(Register register) selectRegister,
    required TResult Function(Product product) selectProduct,
    required TResult Function(String name) searchProduct,
    required TResult Function(Product product) addProductToCart,
  }) {
    return searchProduct(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadList,
    TResult? Function(Register register)? selectRegister,
    TResult? Function(Product product)? selectProduct,
    TResult? Function(String name)? searchProduct,
    TResult? Function(Product product)? addProductToCart,
  }) {
    return searchProduct?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadList,
    TResult Function(Register register)? selectRegister,
    TResult Function(Product product)? selectProduct,
    TResult Function(String name)? searchProduct,
    TResult Function(Product product)? addProductToCart,
    required TResult orElse(),
  }) {
    if (searchProduct != null) {
      return searchProduct(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadList value) loadList,
    required TResult Function(_SelectRegister value) selectRegister,
    required TResult Function(_SelectProduct value) selectProduct,
    required TResult Function(_searchProduct value) searchProduct,
    required TResult Function(_addProductToCart value) addProductToCart,
  }) {
    return searchProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadList value)? loadList,
    TResult? Function(_SelectRegister value)? selectRegister,
    TResult? Function(_SelectProduct value)? selectProduct,
    TResult? Function(_searchProduct value)? searchProduct,
    TResult? Function(_addProductToCart value)? addProductToCart,
  }) {
    return searchProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadList value)? loadList,
    TResult Function(_SelectRegister value)? selectRegister,
    TResult Function(_SelectProduct value)? selectProduct,
    TResult Function(_searchProduct value)? searchProduct,
    TResult Function(_addProductToCart value)? addProductToCart,
    required TResult orElse(),
  }) {
    if (searchProduct != null) {
      return searchProduct(this);
    }
    return orElse();
  }
}

abstract class _searchProduct implements ProductEvent {
  const factory _searchProduct(final String name) = _$searchProductImpl;

  String get name;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$searchProductImplCopyWith<_$searchProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$addProductToCartImplCopyWith<$Res> {
  factory _$$addProductToCartImplCopyWith(_$addProductToCartImpl value,
          $Res Function(_$addProductToCartImpl) then) =
      __$$addProductToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$addProductToCartImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$addProductToCartImpl>
    implements _$$addProductToCartImplCopyWith<$Res> {
  __$$addProductToCartImplCopyWithImpl(_$addProductToCartImpl _value,
      $Res Function(_$addProductToCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$addProductToCartImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$addProductToCartImpl implements _addProductToCart {
  const _$addProductToCartImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductEvent.addProductToCart(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addProductToCartImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$addProductToCartImplCopyWith<_$addProductToCartImpl> get copyWith =>
      __$$addProductToCartImplCopyWithImpl<_$addProductToCartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadList,
    required TResult Function(Register register) selectRegister,
    required TResult Function(Product product) selectProduct,
    required TResult Function(String name) searchProduct,
    required TResult Function(Product product) addProductToCart,
  }) {
    return addProductToCart(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadList,
    TResult? Function(Register register)? selectRegister,
    TResult? Function(Product product)? selectProduct,
    TResult? Function(String name)? searchProduct,
    TResult? Function(Product product)? addProductToCart,
  }) {
    return addProductToCart?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadList,
    TResult Function(Register register)? selectRegister,
    TResult Function(Product product)? selectProduct,
    TResult Function(String name)? searchProduct,
    TResult Function(Product product)? addProductToCart,
    required TResult orElse(),
  }) {
    if (addProductToCart != null) {
      return addProductToCart(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadList value) loadList,
    required TResult Function(_SelectRegister value) selectRegister,
    required TResult Function(_SelectProduct value) selectProduct,
    required TResult Function(_searchProduct value) searchProduct,
    required TResult Function(_addProductToCart value) addProductToCart,
  }) {
    return addProductToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadList value)? loadList,
    TResult? Function(_SelectRegister value)? selectRegister,
    TResult? Function(_SelectProduct value)? selectProduct,
    TResult? Function(_searchProduct value)? searchProduct,
    TResult? Function(_addProductToCart value)? addProductToCart,
  }) {
    return addProductToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadList value)? loadList,
    TResult Function(_SelectRegister value)? selectRegister,
    TResult Function(_SelectProduct value)? selectProduct,
    TResult Function(_searchProduct value)? searchProduct,
    TResult Function(_addProductToCart value)? addProductToCart,
    required TResult orElse(),
  }) {
    if (addProductToCart != null) {
      return addProductToCart(this);
    }
    return orElse();
  }
}

abstract class _addProductToCart implements ProductEvent {
  const factory _addProductToCart(final Product product) =
      _$addProductToCartImpl;

  Product get product;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$addProductToCartImplCopyWith<_$addProductToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  UIStatus get status => throw _privateConstructorUsedError;
  ProductNotification? get notification => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  List<Product> get allProducts => throw _privateConstructorUsedError;
  List<Product> get addCart => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get is_published => throw _privateConstructorUsedError;
  Register? get register => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;
  String get textSearch => throw _privateConstructorUsedError;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {UIStatus status,
      ProductNotification? notification,
      bool loading,
      List<Product> products,
      List<Product> allProducts,
      List<Product> addCart,
      bool isSuccess,
      String errorMessage,
      bool is_published,
      Register? register,
      Product? product,
      String textSearch});

  $UIStatusCopyWith<$Res> get status;
  $ProductNotificationCopyWith<$Res>? get notification;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notification = freezed,
    Object? loading = null,
    Object? products = null,
    Object? allProducts = null,
    Object? addCart = null,
    Object? isSuccess = null,
    Object? errorMessage = null,
    Object? is_published = null,
    Object? register = freezed,
    Object? product = freezed,
    Object? textSearch = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as ProductNotification?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      allProducts: null == allProducts
          ? _value.allProducts
          : allProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      addCart: null == addCart
          ? _value.addCart
          : addCart // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      is_published: null == is_published
          ? _value.is_published
          : is_published // ignore: cast_nullable_to_non_nullable
              as bool,
      register: freezed == register
          ? _value.register
          : register // ignore: cast_nullable_to_non_nullable
              as Register?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      textSearch: null == textSearch
          ? _value.textSearch
          : textSearch // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UIStatusCopyWith<$Res> get status {
    return $UIStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductNotificationCopyWith<$Res>? get notification {
    if (_value.notification == null) {
      return null;
    }

    return $ProductNotificationCopyWith<$Res>(_value.notification!, (value) {
      return _then(_value.copyWith(notification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderStateImplCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$OrderStateImplCopyWith(
          _$OrderStateImpl value, $Res Function(_$OrderStateImpl) then) =
      __$$OrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UIStatus status,
      ProductNotification? notification,
      bool loading,
      List<Product> products,
      List<Product> allProducts,
      List<Product> addCart,
      bool isSuccess,
      String errorMessage,
      bool is_published,
      Register? register,
      Product? product,
      String textSearch});

  @override
  $UIStatusCopyWith<$Res> get status;
  @override
  $ProductNotificationCopyWith<$Res>? get notification;
}

/// @nodoc
class __$$OrderStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$OrderStateImpl>
    implements _$$OrderStateImplCopyWith<$Res> {
  __$$OrderStateImplCopyWithImpl(
      _$OrderStateImpl _value, $Res Function(_$OrderStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notification = freezed,
    Object? loading = null,
    Object? products = null,
    Object? allProducts = null,
    Object? addCart = null,
    Object? isSuccess = null,
    Object? errorMessage = null,
    Object? is_published = null,
    Object? register = freezed,
    Object? product = freezed,
    Object? textSearch = null,
  }) {
    return _then(_$OrderStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as ProductNotification?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      allProducts: null == allProducts
          ? _value._allProducts
          : allProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      addCart: null == addCart
          ? _value._addCart
          : addCart // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      is_published: null == is_published
          ? _value.is_published
          : is_published // ignore: cast_nullable_to_non_nullable
              as bool,
      register: freezed == register
          ? _value.register
          : register // ignore: cast_nullable_to_non_nullable
              as Register?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      textSearch: null == textSearch
          ? _value.textSearch
          : textSearch // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderStateImpl implements _OrderState {
  const _$OrderStateImpl(
      {this.status = const UIInitial(),
      this.notification,
      this.loading = false,
      final List<Product> products = const [],
      final List<Product> allProducts = const [],
      final List<Product> addCart = const [],
      this.isSuccess = false,
      this.errorMessage = '',
      this.is_published = true,
      this.register,
      this.product,
      this.textSearch = ''})
      : _products = products,
        _allProducts = allProducts,
        _addCart = addCart;

  @override
  @JsonKey()
  final UIStatus status;
  @override
  final ProductNotification? notification;
  @override
  @JsonKey()
  final bool loading;
  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<Product> _allProducts;
  @override
  @JsonKey()
  List<Product> get allProducts {
    if (_allProducts is EqualUnmodifiableListView) return _allProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allProducts);
  }

  final List<Product> _addCart;
  @override
  @JsonKey()
  List<Product> get addCart {
    if (_addCart is EqualUnmodifiableListView) return _addCart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addCart);
  }

  @override
  @JsonKey()
  final bool isSuccess;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool is_published;
  @override
  final Register? register;
  @override
  final Product? product;
  @override
  @JsonKey()
  final String textSearch;

  @override
  String toString() {
    return 'ProductState(status: $status, notification: $notification, loading: $loading, products: $products, allProducts: $allProducts, addCart: $addCart, isSuccess: $isSuccess, errorMessage: $errorMessage, is_published: $is_published, register: $register, product: $product, textSearch: $textSearch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._allProducts, _allProducts) &&
            const DeepCollectionEquality().equals(other._addCart, _addCart) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.is_published, is_published) ||
                other.is_published == is_published) &&
            (identical(other.register, register) ||
                other.register == register) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.textSearch, textSearch) ||
                other.textSearch == textSearch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      notification,
      loading,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_allProducts),
      const DeepCollectionEquality().hash(_addCart),
      isSuccess,
      errorMessage,
      is_published,
      register,
      product,
      textSearch);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStateImplCopyWith<_$OrderStateImpl> get copyWith =>
      __$$OrderStateImplCopyWithImpl<_$OrderStateImpl>(this, _$identity);
}

abstract class _OrderState implements ProductState {
  const factory _OrderState(
      {final UIStatus status,
      final ProductNotification? notification,
      final bool loading,
      final List<Product> products,
      final List<Product> allProducts,
      final List<Product> addCart,
      final bool isSuccess,
      final String errorMessage,
      final bool is_published,
      final Register? register,
      final Product? product,
      final String textSearch}) = _$OrderStateImpl;

  @override
  UIStatus get status;
  @override
  ProductNotification? get notification;
  @override
  bool get loading;
  @override
  List<Product> get products;
  @override
  List<Product> get allProducts;
  @override
  List<Product> get addCart;
  @override
  bool get isSuccess;
  @override
  String get errorMessage;
  @override
  bool get is_published;
  @override
  Register? get register;
  @override
  Product? get product;
  @override
  String get textSearch;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderStateImplCopyWith<_$OrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductNotification {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) insertSuccess,
    required TResult Function(String message) insertFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? insertSuccess,
    TResult? Function(String message)? insertFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? insertSuccess,
    TResult Function(String message)? insertFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationInsertSuccess value) insertSuccess,
    required TResult Function(_NotificationInsertFailed value) insertFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationInsertSuccess value)? insertSuccess,
    TResult? Function(_NotificationInsertFailed value)? insertFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationInsertSuccess value)? insertSuccess,
    TResult Function(_NotificationInsertFailed value)? insertFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProductNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductNotificationCopyWith<ProductNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductNotificationCopyWith<$Res> {
  factory $ProductNotificationCopyWith(
          ProductNotification value, $Res Function(ProductNotification) then) =
      _$ProductNotificationCopyWithImpl<$Res, ProductNotification>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ProductNotificationCopyWithImpl<$Res, $Val extends ProductNotification>
    implements $ProductNotificationCopyWith<$Res> {
  _$ProductNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationInsertSuccessImplCopyWith<$Res>
    implements $ProductNotificationCopyWith<$Res> {
  factory _$$NotificationInsertSuccessImplCopyWith(
          _$NotificationInsertSuccessImpl value,
          $Res Function(_$NotificationInsertSuccessImpl) then) =
      __$$NotificationInsertSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotificationInsertSuccessImplCopyWithImpl<$Res>
    extends _$ProductNotificationCopyWithImpl<$Res,
        _$NotificationInsertSuccessImpl>
    implements _$$NotificationInsertSuccessImplCopyWith<$Res> {
  __$$NotificationInsertSuccessImplCopyWithImpl(
      _$NotificationInsertSuccessImpl _value,
      $Res Function(_$NotificationInsertSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NotificationInsertSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotificationInsertSuccessImpl implements _NotificationInsertSuccess {
  _$NotificationInsertSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ProductNotification.insertSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationInsertSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProductNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationInsertSuccessImplCopyWith<_$NotificationInsertSuccessImpl>
      get copyWith => __$$NotificationInsertSuccessImplCopyWithImpl<
          _$NotificationInsertSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) insertSuccess,
    required TResult Function(String message) insertFailed,
  }) {
    return insertSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? insertSuccess,
    TResult? Function(String message)? insertFailed,
  }) {
    return insertSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? insertSuccess,
    TResult Function(String message)? insertFailed,
    required TResult orElse(),
  }) {
    if (insertSuccess != null) {
      return insertSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationInsertSuccess value) insertSuccess,
    required TResult Function(_NotificationInsertFailed value) insertFailed,
  }) {
    return insertSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationInsertSuccess value)? insertSuccess,
    TResult? Function(_NotificationInsertFailed value)? insertFailed,
  }) {
    return insertSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationInsertSuccess value)? insertSuccess,
    TResult Function(_NotificationInsertFailed value)? insertFailed,
    required TResult orElse(),
  }) {
    if (insertSuccess != null) {
      return insertSuccess(this);
    }
    return orElse();
  }
}

abstract class _NotificationInsertSuccess implements ProductNotification {
  factory _NotificationInsertSuccess({required final String message}) =
      _$NotificationInsertSuccessImpl;

  @override
  String get message;

  /// Create a copy of ProductNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationInsertSuccessImplCopyWith<_$NotificationInsertSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationInsertFailedImplCopyWith<$Res>
    implements $ProductNotificationCopyWith<$Res> {
  factory _$$NotificationInsertFailedImplCopyWith(
          _$NotificationInsertFailedImpl value,
          $Res Function(_$NotificationInsertFailedImpl) then) =
      __$$NotificationInsertFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotificationInsertFailedImplCopyWithImpl<$Res>
    extends _$ProductNotificationCopyWithImpl<$Res,
        _$NotificationInsertFailedImpl>
    implements _$$NotificationInsertFailedImplCopyWith<$Res> {
  __$$NotificationInsertFailedImplCopyWithImpl(
      _$NotificationInsertFailedImpl _value,
      $Res Function(_$NotificationInsertFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NotificationInsertFailedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotificationInsertFailedImpl implements _NotificationInsertFailed {
  _$NotificationInsertFailedImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ProductNotification.insertFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationInsertFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProductNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationInsertFailedImplCopyWith<_$NotificationInsertFailedImpl>
      get copyWith => __$$NotificationInsertFailedImplCopyWithImpl<
          _$NotificationInsertFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) insertSuccess,
    required TResult Function(String message) insertFailed,
  }) {
    return insertFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? insertSuccess,
    TResult? Function(String message)? insertFailed,
  }) {
    return insertFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? insertSuccess,
    TResult Function(String message)? insertFailed,
    required TResult orElse(),
  }) {
    if (insertFailed != null) {
      return insertFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationInsertSuccess value) insertSuccess,
    required TResult Function(_NotificationInsertFailed value) insertFailed,
  }) {
    return insertFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationInsertSuccess value)? insertSuccess,
    TResult? Function(_NotificationInsertFailed value)? insertFailed,
  }) {
    return insertFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationInsertSuccess value)? insertSuccess,
    TResult Function(_NotificationInsertFailed value)? insertFailed,
    required TResult orElse(),
  }) {
    if (insertFailed != null) {
      return insertFailed(this);
    }
    return orElse();
  }
}

abstract class _NotificationInsertFailed implements ProductNotification {
  factory _NotificationInsertFailed({required final String message}) =
      _$NotificationInsertFailedImpl;

  @override
  String get message;

  /// Create a copy of ProductNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationInsertFailedImplCopyWith<_$NotificationInsertFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
