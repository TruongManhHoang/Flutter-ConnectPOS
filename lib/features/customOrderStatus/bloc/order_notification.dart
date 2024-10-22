part of 'order_bloc.dart';

@Freezed()
class OrderNotification with _$OrderNotification {
  factory OrderNotification.insertSuccess({
    required String message,
  }) = _NotificationInsertSuccess;

  factory OrderNotification.insertFailed({
    required String message,
  }) = _NotificationInsertFailed;
}
