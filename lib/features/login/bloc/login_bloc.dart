import 'dart:async';
import 'package:boilerplate/core/bloc_core/ui_status.dart';
import 'package:boilerplate/core/keys/app_keys.dart';
import 'package:boilerplate/services/auth_service/auth_service.dart';
import 'package:boilerplate/services/local_storage_service/local_storage_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:jwt_decode/jwt_decode.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';
part 'login_notification.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required AuthService authService,
    required LocalStorageService localStorageService,
  }) : super(const LoginState()) {
    _authService = authService;
    _localStorageService = localStorageService;
    on<_ChangeUsername>(_onChangeUsername);
    on<_ChangePassword>(_onChangePassword);
    on<_Login>(_onLogin);
  }

  late final AuthService _authService;
  late final LocalStorageService _localStorageService;

  void _onChangeUsername(_ChangeUsername event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        username: event.username,
      ),
    );
  }

  void _onChangePassword(_ChangePassword event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        password: event.password,
      ),
    );
  }

  Future<void> _onLogin(_Login event, Emitter<LoginState> emit) async {
    emit(state.copyWith(loading: true, notification: null));

    try {
      final payload = {
        'username': state.username,
        'password': state.password,
      };
      final response = await _authService.login(payload);
      await _localStorageService.setValue(
          key: AppKeys.token, value: response.toString());
      Map<String, dynamic> user = Jwt.parseJwt(response.toString());
      await _localStorageService.setValue(
          key: AppKeys.customerId, value: user['id']);
      emit(
        state.copyWith(
          loading: false,
          isSuccess: true,
          notification: _NotificationInsertSuccess(
            message: 'Login Successful',
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          loading: false,
          notification: _NotificationInsertFailed(
            message: 'Login failed: ${e.toString()}',
          ),
        ),
      );
    }
  }
}
