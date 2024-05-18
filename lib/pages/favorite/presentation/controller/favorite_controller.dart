import 'package:dio/dio.dart';
import 'package:discover/models/fav_model.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../../services/api_service.dart';

class FavoriteController extends SuperController<dynamic> {
  FavModel favModel = FavModel();
  getFav() async {
    try {
      change(true, status: RxStatus.loading());
      final response = await ApiService.getData(url: 'api/favorites');
      if (response.statusCode == 200) {
        print(response.data);
        favModel = FavModel.fromJson(response.data);

        print(response.statusCode);
        change(true, status: RxStatus.success());
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
    getFav();
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
