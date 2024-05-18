import 'package:dio/dio.dart';
import 'package:discover/models/get_countries_model.dart';
import 'package:discover/routes/app_routes.dart';
import 'package:discover/services/api_service.dart';
import 'package:get/get.dart';

class SelectCityController extends SuperController<dynamic> {
  GetCountriesModel cities = GetCountriesModel();
  Future<void> getCity() async {
    try {
      change(true, status: RxStatus.loading());
      final response = await ApiService.getData(url: 'api/countries');
      if (response.statusCode == 200) {
        print(response.data);
        cities = GetCountriesModel.fromJson(response.data);
        print(response.statusCode);
        change(true, status: RxStatus.success());
        Get.toNamed(AppRoutes.main);
      }
    } catch (e) {
      if (e is DioException) {
        print(e.response?.data);
      }
      change(true, status: RxStatus.error());
      rethrow;
    }
  }

  @override
  void onInit() {
    getCity();
    super.onInit();
  }

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
