

import 'package:dairyapp/features/authentication/domain/model/verify_otp_request_model.dart';

abstract class VerifyOTPEvent {}

class VerifyOTPRequestEvent extends VerifyOTPEvent {
  final VerifyOTPRequestModel model;
  VerifyOTPRequestEvent(this.model);
}
