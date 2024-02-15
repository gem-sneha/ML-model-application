import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const Map<String, String> DEFAULT_HEADERS = {
  'Content-Type': 'application/json',
};

class Api {
  final Dio _dio = Dio();
  Api() {
    _dio.options.baseUrl = "https://devapi.geminisolutions.com";
    _dio.options.headers = DEFAULT_HEADERS;
    _dio.options.validateStatus = (status) {
      return status! <= 500;
    };

    _dio.interceptors.add(PrettyDioLogger(
        requestBody: true,
        request: true,
        requestHeader: true,
        responseBody: true));
  }
  Dio get sendRequest {
    return _dio;
  }
}

class ApiResponseList {
  dynamic data;
  String? message;

  ApiResponseList({
    this.data,
    this.message,
  });
  factory ApiResponseList.fromResponse(Response response) {
    final data = response.data as dynamic;
    return ApiResponseList(
        data: data["data"], message: data["message"] ?? "Unexpected error");
  }
}

class ApiResponse {
  final String message;
  final Map<String, dynamic>
      data; // Assuming you have a separate class for "data"

  ApiResponse({required this.message, required this.data});

  factory ApiResponse.fromResponse(Map<String, dynamic> json) {
    return ApiResponse(
      message: json['message'] ?? '',
      data: json["data"],
    );
  }
}
