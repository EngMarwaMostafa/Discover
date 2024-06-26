import 'package:dio/dio.dart';
import 'package:discover/models/banners_model.dart';
import 'package:discover/models/offers_model.dart';
import 'package:discover/services/api_service.dart';
import 'package:get/get.dart' hide Response;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends SuperController<dynamic> {
  BannersModel banners = BannersModel();
  OffersModel offers = OffersModel();
  getBanners() async {
    change(false, status: RxStatus.loading());
    try {
      Response response = await ApiService.getData(url: 'api/banners');
      banners = BannersModel.fromJson(response.data);
      change(false, status: RxStatus.success());
    } catch (e) {
      if (e is DioException) {}
      change(false, status: RxStatus.error());
      rethrow;
    }
  }

  Future<void> getOffers() async {
    try {
      change(false, status: RxStatus.loading());
      final response = await ApiService.getData(url: 'api/offers');
      if (response.statusCode == 200) {
        print(response.data);

        offers = OffersModel.fromJson(response.data);
        print(response.statusCode);
        change(false, status: RxStatus.success());
      }
    } catch (e) {
      if (e is DioException) {
        print(e.response?.data);
      }
      change(false, status: RxStatus.error());
      rethrow;
    }
  }

  @override
  void onInit() {
    getBanners();
    getOffers();
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
