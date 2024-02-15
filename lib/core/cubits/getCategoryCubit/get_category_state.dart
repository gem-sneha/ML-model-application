import 'package:dairyapp/features/dashboard/domain/model/get_category_response_model.dart';

abstract class GetCategoryState {}

class GetCategoryLoading extends GetCategoryState {}

class GetCategorySuccess extends GetCategoryState {
  List<GetCategoryResponseModel> response;
  GetCategorySuccess(this.response);
}

class GetCategoryError extends GetCategoryState {
  final String errorMessage;
  GetCategoryError(this.errorMessage);
}
