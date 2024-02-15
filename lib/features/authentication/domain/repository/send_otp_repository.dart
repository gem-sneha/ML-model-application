import 'dart:convert';

import 'package:dairyapp/core/providers/api.dart';
import 'package:dairyapp/features/authentication/domain/model/send_otp_request_model.dart';
import 'package:dairyapp/features/authentication/domain/model/send_otp_response_model.dart';
import 'package:dio/dio.dart';

final _api = Api();

class SendOTPRepository {
  Future<SendOTPResponseModel> sendOTP(SendOTPRequestModel model) async {
    try {
      Response response = await _api.sendRequest.post(
          'https://ds4e8cjfof.execute-api.us-east-1.amazonaws.com/send-otp',
          data: model.toJson());

      ApiResponse apiResponse =
          ApiResponse.fromResponse(json.decode(response.data));
      if (response.statusCode != 200) {
        throw apiResponse.message.toString();
      }

      return SendOTPResponseModel.fromJson(apiResponse.data);
    } catch (e) {
      rethrow;
    }
  }
}
