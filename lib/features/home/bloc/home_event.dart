part of 'home_bloc.dart';

@Freezed()
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadList() = _LoadList;
}
