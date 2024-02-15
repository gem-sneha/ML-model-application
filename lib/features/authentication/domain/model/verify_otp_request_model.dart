class VerifyOTPRequestModel {
  String? number;
  String? otp;

  VerifyOTPRequestModel({this.number, this.otp});

  VerifyOTPRequestModel.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    otp = json['otp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['otp'] = this.otp;
    return data;
  }
}
