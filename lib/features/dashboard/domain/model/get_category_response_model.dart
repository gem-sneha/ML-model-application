

import 'dart:convert';

class GetCategoryResponseModel {
  String sId;
  String name;
  String description;
  String image;
  String categoryId;
  String createdAt;
  String updatedAt;
  int iV;

  GetCategoryResponseModel({
    this.sId = '',
    this.name = '',
    this.description = '',
    this.image = '',
    this.categoryId = '',
    this.createdAt = '',
    this.updatedAt = '',
    this.iV = 0,
  });

  factory GetCategoryResponseModel.fromJson(Map<String, dynamic> json) {
    return GetCategoryResponseModel(
      sId: json['sId'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      image: json['image'] ?? '',
      categoryId: json['categoryId'] ?? '',
      createdAt: json['createdAt'] ?? '',
      updatedAt: json['updatedAt'] ?? '',
      iV: json['iV'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['sId'] = this.sId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.image;
    data['categoryId'] = this.categoryId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['iV'] = this.iV;
    return data;
  }

  String toJsonString() {
    return json.encode(toJson());
  }

  static GetCategoryResponseModel fromJsonString(String jsonString) {
    return GetCategoryResponseModel.fromJson(json.decode(jsonString));
  }
}