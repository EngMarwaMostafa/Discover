import 'package:dio/dio.dart';
import 'package:discover/models/get_countries_model.dart';
import 'package:discover/services/api_service.dart';
import 'package:get/get.dart';


class SelectCityController extends SuperController<dynamic> {

  RxList<GetCountriesModel> citiesList=<GetCountriesModel>[].obs;

 Future<void> getCity() async {
    try {
      final response = await ApiService.getData(
          url: 'api/countries');
      if(response.statusCode==200){
        print(response.data);

        // for(var item in response.data){
        //   citiesList.add(GetCountriesModel.fromJson(item));
        // }
        print(response.statusCode);
      }
    }catch(e) {
      if (e is DioException) {
     print(e.response?.data);
      }
      rethrow;
    }}

  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onHidden() {
    // TODO: implement onHidden
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }
}