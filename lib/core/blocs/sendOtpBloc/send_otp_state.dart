
import 'package:dairyapp/features/authentication/domain/model/send_otp_response_model.dart';

abstract class SendOTPState {}

class SendOTPInitial extends SendOTPState {}

class SendOTPLoading extends SendOTPState {}

class SendOTPSuccess extends SendOTPState {
   final SendOTPResponseModel model;
  SendOTPSuccess(this.model);
}

class SendOTPError extends SendOTPState {
  final String errorMessage;
  SendOTPError(this.errorMessage);
}
