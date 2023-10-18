import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: "Connection timeout with server");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: "Send timeout with server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: "Receive timeout with server");
      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: "Bad certificate");
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            dioException.response!.statusCode ?? 500,
            dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: "Connection with server cancled");
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: "Connection error.");
      case DioExceptionType.unknown:
        if (dioException.message!.contains("SocketException")) {
          return ServerFailure(errorMessage: "No internet connection");
        }
        return ServerFailure(
            errorMessage: "Opps there was an error, please try again.");
      default:
        return ServerFailure(
            errorMessage: "Opps there was an error, please try again.");
    }
  }

  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMessage: response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure(
          errorMessage: "Your request not found, please try again later.");
    } else if (statusCode == 500) {
      return ServerFailure(
          errorMessage: "Error with server, please try again later.");
    } else {
      return ServerFailure(
          errorMessage: "Opps there was an error, please try again.");
    }
  }
}
