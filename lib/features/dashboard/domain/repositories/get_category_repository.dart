import 'dart:convert';

import 'package:dairyapp/core/providers/api.dart';
import 'package:dairyapp/features/dashboard/domain/model/get_category_response_model.dart';
import 'package:dio/dio.dart';

final _api = Api();

class GetCategoryRepository {
  Future<List<GetCategoryResponseModel>> getCategory() async {
    try {
      Response response = await _api.sendRequest.get(
        'https://9u5nhbrzng.execute-api.us-east-1.amazonaws.com/dev/get-category',
      );
     
      List<dynamic> responseData = response.data['data'];
     
      List<GetCategoryResponseModel> categories = responseData
          .map<GetCategoryResponseModel>(
              (json) => GetCategoryResponseModel.fromJson(json))
          .toList();
      return categories;
    } catch (e) {
     
      rethrow;
    }
  }
}
