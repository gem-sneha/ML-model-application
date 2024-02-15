import 'package:dairyapp/core/blocs/getCategoryByIdBloc/get_category_by_id_event.dart';
import 'package:dairyapp/core/blocs/getCategoryByIdBloc/get_category_by_id_state.dart';
import 'package:dairyapp/features/dashboard/domain/repositories/get_category_by_id_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class GetCategoryByIdBloc extends Bloc<GetCategoryByIdEvent, GetCategoryByIdState> {
  final GetCategoryByIdRepository _repository;
  GetCategoryByIdBloc(this._repository) : super(GetCategoryByIdInitial()) {
    on<GetCategoryByIdRequestEvent>((event, emit) async {
      emit(GetCategoryByIdLoading());
      try {
        var response = await _repository.getCategoryById();
        print('object ${response}');
        emit(GetCategoryByIdSuccess(response));
      } catch (e) {
        emit(GetCategoryByIdError(e.toString()));
      }
    });
  }
}
