class SendOTPResponseModel {
  
  Data? data;

  SendOTPResponseModel({ this.data});

  SendOTPResponseModel.fromJson(Map<String, dynamic> json) {
  
    data = json != null ? new Data.fromJson(json) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
   
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? number;
  String? otp;
  String? sId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data(
      {this.number,
      this.otp,
      this.sId,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    otp = json['otp'];
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['otp'] = this.otp;
    data['_id'] = this.sId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
