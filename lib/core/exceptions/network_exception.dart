import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exception.freezed.dart';

@freezed
class NetworkException with _$NetworkException {
  factory NetworkException({
    required String errorMessage,
    required int statusCode,
  }) = _NetworkExceptin;

  factory NetworkException.unknownError() =>
      NetworkException(errorMessage: "Unknown error", statusCode: 500);

  static NetworkException getException(Object exception) {
    if (exception is DioError) {
      return NetworkException(errorMessage: "errorMessage", statusCode: 900);
    } else {
      return NetworkException(errorMessage: "errorMessage", statusCode: 900);
    }
  }
}
