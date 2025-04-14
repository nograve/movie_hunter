import 'package:movie_hunter/domain/entities/result.dart';

sealed class NetworkResponse<T> {
  Result<T> toResult() => switch (this) {
    SuccessResponse(:final data) => Success(data),
    ErrorResponse(:final error) => Error(error),
  };
}

class SuccessResponse<T> extends NetworkResponse<T> {
  SuccessResponse(this.data);
  final T data;
}

class ErrorResponse<T> extends NetworkResponse<T> {
  ErrorResponse(this.error);
  final Object error;
}
