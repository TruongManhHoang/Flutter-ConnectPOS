part of 'cart_bloc.dart';

@Freezed()
class CartEventNotification with _$CartEventNotification {
  factory CartEventNotification.insertSuccess({
    required String message,
  }) = _NotificationInsertSuccess;

  factory CartEventNotification.insertFailed({
    required String message,
  }) = _NotificationInsertFailed;
}
