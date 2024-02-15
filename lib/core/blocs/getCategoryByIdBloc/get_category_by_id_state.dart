import 'package:dairyapp/features/dashboard/domain/model/get_category_by_id_response_model.dart';



abstract class GetCategoryByIdState {}

class GetCategoryByIdInitial extends GetCategoryByIdState {}
class GetCategoryByIdLoading extends GetCategoryByIdState {}

class GetCategoryByIdSuccess extends GetCategoryByIdState {
  List<GetCategoryByIdResponseModel> response;
  GetCategoryByIdSuccess(this.response);
}

class GetCategoryByIdError extends GetCategoryByIdState {
  final String errorMessage;
  GetCategoryByIdError(this.errorMessage);
}
