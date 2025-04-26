import 'dart:async';
import 'dart:io';

import 'package:book_list_app/core/networking/response/response_status.dart';

import 'api_error_model.dart';

class ErrorHandler implements Exception {
  late ApiErrorModel apiErrorModel;

  ErrorHandler.handle(dynamic error) {
    apiErrorModel = _handleError(error);
  }

  ApiErrorModel _handleError(dynamic error) {
    // Handle timeout errors
    if (error is TimeoutException) {
      return ResponseStatus.connectionTimeOut.getFailure();
    } else if (error is SocketException) {
      // Handle socket errors
      return ResponseStatus.connectionTimeOut.getFailure();
    }
    // Handle HTTP exceptions with status codes
    if (error is HttpException) {
      try {
        // Parse error model from the response data
        return ApiErrorModel(code: ResponseStatus.default_.code, message: error.message);
      } catch (_) {
        // Fallback if parsing fails
        return ResponseStatus.default_.getFailure();
      }
    }
    if (error is String) {
      return ApiErrorModel(code: ResponseStatus.default_.code, message: error);
    }
    // Fallback for all other errors
    return ResponseStatus.default_.getFailure();
  }
}
