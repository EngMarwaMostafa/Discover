class UserOrdersModel {
  List<Data>? data;

  UserOrdersModel({this.data});

  UserOrdersModel.fromJson(Map<String, dynamic> json) {
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
  String? totalPrice;
  String? orderDate;
  int? state;
  int? quantity;
  String? reservationCode;
  Service? service;
  Owner? owner;
  User? user;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.totalPrice,
      this.orderDate,
      this.state,
      this.quantity,
      this.reservationCode,
      this.service,
      this.owner,
      this.user,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    totalPrice = json['total_price'];
    orderDate = json['order_date'];
    state = json['state'];
    quantity = json['quantity'];
    reservationCode = json['reservation_code'];
    service =
        json['service'] != null ? Service.fromJson(json['service']) : null;
    owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['total_price'] = totalPrice;
    data['order_date'] = orderDate;
    data['state'] = state;
    data['quantity'] = quantity;
    data['reservation_code'] = reservationCode;
    if (service != null) {
      data['service'] = service!.toJson();
    }
    if (owner != null) {
      data['owner'] = owner!.toJson();
    }
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Service {
  int? id;
  String? titleAr;
  String? titleEn;
  String? image;
  String? unPrice;
  String? price;
  String? mediatorPrice;
  String? descriptionAr;
  String? descriptionEn;
  String? mapUrl;
  String? facebookUrl;
  String? instagramUrl;
  List<Null>? images;
  String? createdAt;
  String? updatedAt;

  Service(
      {this.id,
      this.titleAr,
      this.titleEn,
      this.image,
      this.unPrice,
      this.price,
      this.mediatorPrice,
      this.descriptionAr,
      this.descriptionEn,
      this.mapUrl,
      this.facebookUrl,
      this.instagramUrl,
      this.images,
      this.createdAt,
      this.updatedAt});

  Service.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    titleAr = json['title_ar'];
    titleEn = json['title_en'];
    image = json['image'];
    unPrice = json['un_price'];
    price = json['price'];
    mediatorPrice = json['mediator_price'];
    descriptionAr = json['description_ar'];
    descriptionEn = json['description_en'];
    mapUrl = json['mapUrl'];
    facebookUrl = json['facebookUrl'];
    instagramUrl = json['instagramUrl'];
    // if (json['images'] != null) {
    //   images = <Null>[];
    //   json['images'].forEach((v) {
    //     images!.add(new Null.fromJson(v));
    //   });
    // }
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title_ar'] = titleAr;
    data['title_en'] = titleEn;
    data['image'] = image;
    data['un_price'] = unPrice;
    data['price'] = price;
    data['mediator_price'] = mediatorPrice;
    data['description_ar'] = descriptionAr;
    data['description_en'] = descriptionEn;
    data['mapUrl'] = mapUrl;
    data['facebookUrl'] = facebookUrl;
    data['instagramUrl'] = instagramUrl;
    // if (this.images != null) {
    //   data['images'] = this.images!.map((v) => v.toJson()).toList();
    // }
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Owner {
  int? id;
  String? name;
  String? email;
  String? createdAt;
  String? updatedAt;

  Owner({this.id, this.name, this.email, this.createdAt, this.updatedAt});

  Owner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? email;

  User({this.id, this.name, this.email});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    return data;
  }
}
