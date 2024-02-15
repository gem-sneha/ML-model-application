import 'package:bloc/bloc.dart';
import 'package:dairyapp/core/blocs/verifyOtpBloc/verify_otp_events.dart';
import 'package:dairyapp/core/blocs/verifyOtpBloc/verify_otp_state.dart';
import 'package:dairyapp/features/authentication/domain/repository/verify_otp_repository.dart';


class VerifyOTPBloc extends Bloc<VerifyOTPEvent, VerifyOTPState> {
  final VerifyOTPRepository _repository;
  VerifyOTPBloc(this._repository) : super(VerifyOTPInitial()) {
    on<VerifyOTPRequestEvent>((event, emit) async {
      emit(VerifyOTPLoading());
      try {
        var response = await _repository.verifyOTP(event.model);
       
        emit(VerifyOTPSuccess());
      } catch (e) {
        emit(VerifyOTPError(e.toString()));
      }
    });
  }
}