class GetCategoryByIdResponseModel {
  String? sId;
  String? name;
  String? code;
  String? image;
  String? categoryIds;
  double? price;
  String? createdByRole;
  String? createdAt;
  String? updatedAt;
  int? iV;

  GetCategoryByIdResponseModel(
      {this.sId,
      this.name,
      this.code,
      this.image,
      this.categoryIds,
      this.price,
      this.createdByRole,
      this.createdAt,
      this.updatedAt,
      this.iV});

  GetCategoryByIdResponseModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    code = json['code'];
    image = json['image'];
    categoryIds = json['categoryIds'];
    price = json['price'];
    createdByRole = json['createdByRole'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['code'] = this.code;
    data['image'] = this.image;
    data['categoryIds'] = this.categoryIds;
    data['price'] = this.price;
    data['createdByRole'] = this.createdByRole;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
