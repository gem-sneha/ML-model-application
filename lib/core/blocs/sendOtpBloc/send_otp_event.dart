
import 'package:dairyapp/features/authentication/domain/model/send_otp_request_model.dart';

abstract class SendOTPEvent {}

class SendOTPRequestEvent extends SendOTPEvent {
  final SendOTPRequestModel model;
  SendOTPRequestEvent(this.model);
}
