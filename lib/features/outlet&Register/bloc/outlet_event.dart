part of 'outlet_bloc.dart';

@Freezed()
class OutletEvent with _$OutletEvent {
  const factory OutletEvent.loadList() = _LoadList;

  const factory OutletEvent.newOutlet() = _newOutlet;

  const factory OutletEvent.updateOutlet() = _updateOutlet;

  const factory OutletEvent.changeName(String name) = _changeName;

  const factory OutletEvent.changeStreet(String street) = _changeStreet;

  const factory OutletEvent.changeCity(String city) = _changeCity;

  const factory OutletEvent.changeCountry(String country) = _changeCountry;

  const factory OutletEvent.changeRegion(String region) = _changeRegion;

  const factory OutletEvent.changeZip(String zip) = _changeZip;

  const factory OutletEvent.changeTelephone(String telephone) =
      _changeTelephone;

  const factory OutletEvent.selectOutlet(Outlet outlet) = _SelectOutlet;
}
