import 'package:boilerplate/core/bloc_core/ui_status.dart';
import 'package:boilerplate/core/keys/app_keys.dart';
import 'package:boilerplate/features/outlet&Register/model/outlet.dart';
import 'package:boilerplate/services/local_storage_service/local_storage_service.dart';
import 'package:boilerplate/services/outlet_Service/outlet_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'outlet_event.dart';
part 'outlet_state.dart';
part 'outlet_bloc.freezed.dart';
part 'outlet_notification.dart';

class OutletBloc extends Bloc<OutletEvent, OutletState> {
  final OutletService _outletService;
  final LocalStorageService _localStorageService;

  OutletBloc({
    required OutletService outletService,
    required LocalStorageService localStorageService,
  })  : _outletService = outletService,
        _localStorageService = localStorageService,
        super(const OutletState()) {
    on<_LoadList>(_onLoadList);
    on<_updateOutlet>(_onUpdateOutlet);
    on<_changeName>(_onChangeName);
    on<_changeStreet>(_onChangeStreet);
    on<_changeCity>(_onChangeCity);
    on<_changeCountry>(_onChangeCountry);
    on<_changeRegion>(_onChangeRegion);
    on<_changeZip>(_onChangeZip);
    on<_changeTelephone>(_onChangeTelephone);
    on<_SelectOutlet>(_onSelectOutlet);
    on<_newOutlet>(_onNewOutlet);
  }
  void _onLoadList(_LoadList event, Emitter<OutletState> emit) async {
    try {
      emit(
        state.copyWith(
          loading: true,
          isSuccess: false,
        ),
      );
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      String keyUser =
          _localStorageService.getString(key: AppKeys.customerId) ?? '';

      dynamic response = await _outletService.getStores(token, keyUser);
      if (response.data != null && response.data['items'] != null) {
        List<dynamic> outletsJson = response.data['items'];
        List<Outlet> outlets =
            outletsJson.map((json) => Outlet.fromJson(json)).toList();
        emit(
          state.copyWith(
            outlets: outlets,
            loading: false,
            isSuccess: true,
          ),
        );
      } else {
        throw Exception('Response does not contain "items"');
      }
    } catch (e) {
      emit(
        state.copyWith(
          loading: false,
          isSuccess: false,
          errorMessage: 'Failed to load items: ${e.toString()}',
        ),
      );
    }
  }

  void _onChangeName(_changeName event, Emitter<OutletState> emit) {
    if (event.name != null) {
      emit(
        state.copyWith(
          name: event.name,
        ),
      );
    }
  }

  void _onChangeStreet(_changeStreet event, Emitter<OutletState> emit) {
    if (event.street != null) {
      emit(
        state.copyWith(
          street: event.street,
        ),
      );
    }
  }

  void _onChangeCity(_changeCity event, Emitter<OutletState> emit) {
    if (event.city != null) {
      emit(
        state.copyWith(
          city: event.city,
        ),
      );
    }
  }

  void _onChangeCountry(_changeCountry event, Emitter<OutletState> emit) {
    if (event.country != null) {
      emit(
        state.copyWith(
          country: event.country,
        ),
      );
    }
  }

  void _onChangeRegion(_changeRegion event, Emitter<OutletState> emit) {
    if (event.region != null) {
      emit(
        state.copyWith(
          region: event.region,
        ),
      );
    }
  }

  void _onChangeZip(_changeZip event, Emitter<OutletState> emit) {
    if (event.zip != null) {
      emit(
        state.copyWith(
          zip: event.zip,
        ),
      );
    }
  }

  void _onChangeTelephone(_changeTelephone event, Emitter<OutletState> emit) {
    if (event.telephone != null) {
      emit(
        state.copyWith(
          telephone: event.telephone,
        ),
      );
    }
  }

  void _onNewOutlet(_newOutlet event, Emitter<OutletState> emit) async {
    try {
      emit(state.copyWith(loading: true));

      if (state.outlet == null) {
        emit(
          state.copyWith(
            loading: false,
            notification: _NotificationInsertFailed(
              message: 'No outlet data found!',
            ),
          ),
        );
      }

      Outlet outlet = Outlet(
        id: 'random-id',
        name: state.name,
        street: state.street,
        city: state.city,
        country: state.country,
        region: state.region,
        zip: state.zip,
        telephone: state.telephone,
        status: true,
      );
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';

      dynamic payload = outlet.toJson();
      dynamic response = await _outletService.newStores(payload, token);

      emit(
        state.copyWith(
          loading: false,
          isSuccess: true,
          outlet: outlet,
          notification: _NotificationInsertSuccess(
            message: 'Create Successful',
          ),
        ),
      );
      // } else {
      emit(
        state.copyWith(
          loading: false,
          notification: _NotificationInsertFailed(
            message: 'Create failed: Invalid response from server',
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          loading: false,
          notification: _NotificationInsertFailed(
            message: 'Create failed: ${e.toString()}',
          ),
        ),
      );
    }
  }

  void _onSelectOutlet(_SelectOutlet event, Emitter<OutletState> emit) {
    emit(state.copyWith(outlet: event.outlet));
  }

  void _onUpdateOutlet(_updateOutlet event, Emitter<OutletState> emit) async {
    emit(
      state.copyWith(
        loading: true,
        isSuccess: false,
      ),
    );
    try {
      Outlet outlet = state.outlet!;
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';

      dynamic payload = outlet.toJson();
      dynamic response =
          await _outletService.updateStores(payload, outlet.id, token);
      emit(
        state.copyWith(
          loading: false,
          isSuccess: true,
          outlet: outlet,
          notification: _NotificationInsertSuccess(
            message: 'Update Successful',
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          loading: false,
          notification: _NotificationInsertFailed(
            message: 'Update failed: ${e.toString()}',
          ),
        ),
      );
    }
  }
}
