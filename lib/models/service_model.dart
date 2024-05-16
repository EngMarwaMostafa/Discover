// class ServiceModel {
//   List<Data>? data;
//
//   ServiceModel({this.data});
//
//   ServiceModel.fromJson(Map<String, dynamic> json) {
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(Data.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Data {
//   int? id;
//   String? title;
//   String? image;
//   String? unPrice;
//   String? price;
//   String? description;
//   Category? category;
//   List<Images>? images;
//   List<Offers>? offers;
//   String? createdAt;
//   String? updatedAt;
//
//   Data(
//       {this.id,
//         this.title,
//         this.image,
//         this.unPrice,
//         this.price,
//         this.description,
//         this.category,
//         this.images,
//         this.offers,
//         this.createdAt,
//         this.updatedAt});
//
//   Data.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     title = json['title'];
//     image = json['image'];
//     unPrice = json['un_price'];
//     price = json['price'];
//     description = json['description'];
//     category = json['category'] != null
//         ? Category.fromJson(json['category'])
//         : null;
//     if (json['images'] != null) {
//       images = <Images>[];
//       json['images'].forEach((v) {
//         images!.add(Images.fromJson(v));
//       });
//     }
//     if (json['offers'] != null) {
//       offers = <Offers>[];
//       json['offers'].forEach((v) {
//         offers!.add(Offers.fromJson(v));
//       });
//     }
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['title'] = title;
//     data['image'] = image;
//     data['un_price'] = unPrice;
//     data['price'] = price;
//     data['description'] = description;
//     if (category != null) {
//       data['category'] = category!.toJson();
//     }
//     if (images != null) {
//       data['images'] = images!.map((v) => v.toJson()).toList();
//     }
//     if (offers != null) {
//       data['offers'] = offers!.map((v) => v.toJson()).toList();
//     }
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//     return data;
//   }
// }
//
// class Category {
//   int? id;
//   String? title;
//   List<Null>? countries;
//
//   Category({this.id, this.title, this.countries});
//
//   Category.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     title = json['title'];
//     if (json['countries'] != null) {
//       countries = <Null>[];
//       json['countries'].forEach((v) {
//         countries!.add(new Null.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['title'] = title;
//     if (countries != null) {
//       data['countries'] = countries!.map((v) => v?.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Images {
//   int? id;
//   int? serviceId;
//   String? imagePath;
//   String? createdAt;
//   String? updatedAt;
//
//   Images(
//       {this.id,
//         this.serviceId,
//         this.imagePath,
//         this.createdAt,
//         this.updatedAt});
//
//   Images.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     serviceId = json['service_id'];
//     imagePath = json['image_path'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['service_id'] = serviceId;
//     data['image_path'] = imagePath;
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//     return data;
//   }
// }
//
// class Offers {
//   int? id;
//   int? serviceId;
//   String? discountAmount;
//   Service? service;
//   String? createdAt;
//   String? updatedAt;
//
//   Offers(
//       {this.id,
//         this.serviceId,
//         this.discountAmount,
//         this.service,
//         this.createdAt,
//         this.updatedAt});
//
//   Offers.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     serviceId = json['service_id'];
//     discountAmount = json['discount_amount'];
//     service =
//     json['service'] != null ? Service.fromJson(json['service']) : null;
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['service_id'] = serviceId;
//     data['discount_amount'] = discountAmount;
//     if (service != null) {
//       data['service'] = service!.toJson();
//     }
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//     return data;
//   }
// }
//
// class Service {
//   int? id;
//   String? title;
//   String? image;
//   String? unPrice;
//   String? price;
//   String? description;
//   String? createdAt;
//   String? updatedAt;
//
//   Service(
//       {this.id,
//         this.title,
//         this.image,
//         this.unPrice,
//         this.price,
//         this.description,
//         this.createdAt,
//         this.updatedAt});
//
//   Service.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     title = json['title'];
//     image = json['image'];
//     unPrice = json['un_price'];
//     price = json['price'];
//     description = json['description'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['title'] = title;
//     data['image'] = image;
//     data['un_price'] = unPrice;
//     data['price'] = price;
//     data['description'] = description;
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//     return data;
//   }
// }