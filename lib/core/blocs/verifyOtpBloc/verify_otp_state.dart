


import 'package:dairyapp/features/authentication/domain/model/verify_otp_response_model.dart';

abstract class VerifyOTPState {}

class VerifyOTPInitial extends VerifyOTPState {}
class VerifyOTPLoading extends VerifyOTPState {}

class VerifyOTPSuccess extends VerifyOTPState {
 
}

class VerifyOTPError extends VerifyOTPState {
  final String errorMessage;
  VerifyOTPError(this.errorMessage);
}
