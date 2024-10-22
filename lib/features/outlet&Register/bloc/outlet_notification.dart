part of 'outlet_bloc.dart';

@Freezed()
class OutletNotification with _$OutletNotification {
  factory OutletNotification.insertSuccess({
    required String message,
  }) = _NotificationInsertSuccess;

  factory OutletNotification.insertFailed({
    required String message,
  }) = _NotificationInsertFailed;
}
