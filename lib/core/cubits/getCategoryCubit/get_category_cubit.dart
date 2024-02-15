

import 'package:dairyapp/core/cubits/getCategoryCubit/get_category_state.dart';
import 'package:dairyapp/features/dashboard/domain/repositories/get_category_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetCategoryCubit extends Cubit<GetCategoryState> {
  final GetCategoryRepository _repository;
  GetCategoryCubit(this._repository) : super(GetCategoryLoading());
  void getCategories() async {
    try {
      var response = await _repository.getCategory();

      emit(GetCategorySuccess(response ));
    } catch (e) {
      emit(GetCategoryError(e.toString()));
    }
  }
}

