class OffersModel {
  List<Data>? data;

  OffersModel({this.data});

  OffersModel.fromJson(Map<String, dynamic> json) {
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
  int? serviceId;
  String? discountAmount;
  Service? service;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.serviceId,
      this.discountAmount,
      this.service,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    serviceId = json['service_id'];
    discountAmount = json['discount_amount'];
    service =
        json['service'] != null ? Service.fromJson(json['service']) : null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['service_id'] = serviceId;
    data['discount_amount'] = discountAmount;
    if (service != null) {
      data['service'] = service!.toJson();
    }
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Service {
  int? id;
  String? title;
  String? image;
  String? unPrice;
  String? price;
  String? mediatorPrice;
  String? description;
  List<Images>? images;
  String? createdAt;
  String? updatedAt;

  Service(
      {this.id,
      this.title,
      this.image,
      this.unPrice,
      this.price,
      this.mediatorPrice,
      this.description,
      this.images,
      this.createdAt,
      this.updatedAt});

  Service.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    unPrice = json['un_price'];
    price = json['price'];
    mediatorPrice = json['mediator_price'];
    description = json['description'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['image'] = image;
    data['un_price'] = unPrice;
    data['price'] = price;
    data['mediator_price'] = mediatorPrice;
    data['description'] = description;
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Images {
  int? id;
  int? serviceId;
  String? imagePath;
  String? createdAt;
  String? updatedAt;

  Images(
      {this.id,
      this.serviceId,
      this.imagePath,
      this.createdAt,
      this.updatedAt});

  Images.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    serviceId = json['service_id'];
    imagePath = json['image_path'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['service_id'] = serviceId;
    data['image_path'] = imagePath;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
