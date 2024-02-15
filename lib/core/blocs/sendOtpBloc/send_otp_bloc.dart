import 'package:dairyapp/core/blocs/sendOtpBloc/send_otp_event.dart';
import 'package:dairyapp/core/blocs/sendOtpBloc/send_otp_state.dart';
import 'package:dairyapp/features/authentication/domain/repository/send_otp_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SendOTPBloc extends Bloc<SendOTPEvent, SendOTPState> {
  final SendOTPRepository _repository;
  SendOTPBloc(this._repository) : super(SendOTPInitial()) {
    on<SendOTPRequestEvent>((event, emit) async {
      emit(SendOTPLoading());
      try {
        var response = await _repository.sendOTP(event.model);

        emit(SendOTPSuccess(response));
      } catch (e) {
        emit(SendOTPError(e.toString()));
      }
    });
  }
}


