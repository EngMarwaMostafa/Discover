class GetCategoriesModel {
  List<Data>? data;

  GetCategoriesModel({this.data});

  GetCategoriesModel.fromJson(Map<String, dynamic> json) {
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
  String? title;
  List<String>? countries;

  Data({this.id, this.title, this.countries});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    countries = json['countries'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['countries'] = countries;
    return data;
  }
}