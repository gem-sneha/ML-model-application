import 'dart:convert';

import 'package:dairyapp/core/providers/api.dart';
import 'package:dairyapp/features/authentication/domain/model/verify_otp_request_model.dart';
import 'package:dairyapp/features/authentication/domain/model/verify_otp_response_model.dart';
import 'package:dio/dio.dart';

final _api = Api();

class VerifyOTPRepository {
  Future<VerifyOTPResponseModel> verifyOTP(VerifyOTPRequestModel model) async {
    try {
      Response response = await _api.sendRequest.post(
          'https://ds4e8cjfof.execute-api.us-east-1.amazonaws.com/verify-otp',
          data: model.toJson());

      dynamic jsonResponse = json.decode(response.data);


      String message = jsonResponse['message'] ?? '';
      List<Map<String, dynamic>> dataList =
          List<Map<String, dynamic>>.from(jsonResponse['data'] ?? []);

      Map<String, dynamic>? firstDataItem =
          dataList.isNotEmpty ? dataList[0] : null;

      ApiResponse apiResponse =
          ApiResponse(message: message, data: firstDataItem ?? {});

      
      if (response.statusCode != 200) {
        throw apiResponse.message.toString();
      }
    
      return VerifyOTPResponseModel.fromJson(apiResponse.data);
    } catch (e) {
      rethrow;
    }
  }
}
