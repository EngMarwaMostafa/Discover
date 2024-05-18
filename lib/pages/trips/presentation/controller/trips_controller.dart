import 'package:dio/dio.dart';
import 'package:discover/models/trips_model.dart';
import 'package:get/get.dart' hide Response;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../../services/api_service.dart';

class TripsController extends SuperController<dynamic> {
  TripsModel trips = TripsModel();
  getTrips() async {
    change(false, status: RxStatus.loading());
    try {
      Response response = await ApiService.getData(url: 'api/trips');
      trips = TripsModel.fromJson(response.data);
      change(false, status: RxStatus.success());
      print(trips.data?.first.price);
    } catch (e) {
      if (e is DioException) {}
      change(false, status: RxStatus.error());
      rethrow;
    }
  }

  @override
  void onInit() {
    getTrips();
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
