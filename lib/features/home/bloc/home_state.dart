part of 'home_bloc.dart';

@Freezed()
class HomeState with _$HomeState {
  const factory HomeState(
      {@Default(UIInitial()) UIStatus status,
      @Default(false) bool loading,
      @Default([]) List<Item> items,
      @Default(false) bool isSuccess,
      String? errorMessage}) = _HomeState;
}
