part of 'product_bloc.dart';

@Freezed()
class ProductNotification with _$ProductNotification {
  factory ProductNotification.insertSuccess({
    required String message,
  }) = _NotificationInsertSuccess;

  factory ProductNotification.insertFailed({
    required String message,
  }) = _NotificationInsertFailed;
}
