class FavModel {
  List<Data>? data;

  FavModel({this.data});

  FavModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  int? userId;
  int? serviceId;
  String? createdAt;
  String? updatedAt;
  Service? service;

  Data(
      {this.id,
      this.userId,
      this.serviceId,
      this.createdAt,
      this.updatedAt,
      this.service});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    serviceId = json['service_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    service =
        json['service'] != null ? Service.fromJson(json['service']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['service_id'] = serviceId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (service != null) {
      data['service'] = service!.toJson();
    }
    return data;
  }
}

class Service {
  int? id;
  String? title;
  String? image;
  String? priceBeforeDiscount;
  String? priceAfterDiscount;
  String? mediatorPrice;
  String? description;
  int? categoryId;
  String? createdAt;
  String? updatedAt;
  int? ownerId;
  String? imageUrl;

  Service(
      {this.id,
      this.title,
      this.image,
      this.priceBeforeDiscount,
      this.priceAfterDiscount,
      this.mediatorPrice,
      this.description,
      this.categoryId,
      this.createdAt,
      this.updatedAt,
      this.ownerId,
      this.imageUrl});

  Service.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    priceBeforeDiscount = json['price_before_discount'];
    priceAfterDiscount = json['price_after_discount'];
    mediatorPrice = json['mediator_price'];
    description = json['description'];
    categoryId = json['category_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    ownerId = json['owner_id'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['image'] = image;
    data['price_before_discount'] = priceBeforeDiscount;
    data['price_after_discount'] = priceAfterDiscount;
    data['mediator_price'] = mediatorPrice;
    data['description'] = description;
    data['category_id'] = categoryId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['owner_id'] = ownerId;
    data['image_url'] = imageUrl;
    return data;
  }
}
