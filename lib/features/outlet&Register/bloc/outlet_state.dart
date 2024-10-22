part of 'outlet_bloc.dart';

@Freezed()
class OutletState with _$OutletState {
  const factory OutletState({
    @Default(UIInitial()) UIStatus status,
    OutletNotification? notification,
    @Default(false) bool loading,
    @Default([]) List<Outlet> outlets,
    @Default(false) bool isSuccess,
    @Default('') String errorMessage,
    @Default('') String name,
    @Default('') String street,
    @Default('') String city,
    @Default('') String country,
    @Default('') String region,
    @Default('') String zip,
    @Default('') String telephone,
    Outlet? outlet,
  }) = _OutletState;
}
