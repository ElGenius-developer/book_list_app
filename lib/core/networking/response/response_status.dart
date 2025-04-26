import 'package:book_list_app/core/networking/api_error/api_error_model.dart';

enum ResponseStatus {
  success(200, "Success with data"),
  noContent(201, "No Content"),
  badRequest(400, "Bad Request"),
  unAuthorised(401, "Unauthorised"),
  forbidden(403, "Forbidden"),
  notFound(404, "Not Found"),
  apiLogicError(422, "API Logic Error"),
  internalServerError(500, "Internal Server Error"),
  connectionTimeOut(504, "Connection Timeout"),
  cancel(-2, "Canceled"),
  receiveTimeout(-3, "Receive Timeout"),
  sendTimeout(-4, "Send Timeout"),
  cacheError(-5, "Cache Error"),
  noInternet(-6, "No Internet"),
  default_(-7, "Something went wrong"),
  unknown(-8, "Unknown Error"),
  conflict(-9, "Conflict"),
  loading(-10, "Loading..."),
  retryAgainMessage(-11, "Retry Again"),
  ok(-12, "Ok");

  final int code;
  final String message;

  const ResponseStatus(this.code, this.message);
  ResponseStatus getStatusFromCode(int code) => values.firstWhere((element) => element.code == code,
  orElse: () => ResponseStatus.default_,
  );
  ApiErrorModel getFailure() => ApiErrorModel(code: code, message: message);
}