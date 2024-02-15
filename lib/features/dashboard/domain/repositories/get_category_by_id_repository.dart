import 'dart:convert';

import 'package:dairyapp/core/providers/api.dart';
import 'package:dairyapp/features/dashboard/domain/model/get_category_by_id_response_model.dart';
import 'package:dio/dio.dart';

final _api = Api();

class GetCategoryByIdRepository {
  Future<List<GetCategoryByIdResponseModel>> getCategoryById() async {
    try {
      Response response = await _api.sendRequest.get(
        'https://9u5nhbrzng.execute-api.us-east-1.amazonaws.com/dev/get-product-by-id/',
      );
   
      List<dynamic> responseData = response.data['data'];

      List<GetCategoryByIdResponseModel> products = responseData
          .map<GetCategoryByIdResponseModel>(
              (json) => GetCategoryByIdResponseModel.fromJson(json))
          .toList();
      return products;
    } catch (e) {
      rethrow;
    }
  }
}
