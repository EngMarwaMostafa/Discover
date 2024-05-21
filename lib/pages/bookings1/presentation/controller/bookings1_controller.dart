import 'package:dio/dio.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../../models/user_orders_model.dart';
import '../../../../services/api_service.dart';

class Bookings1Controller extends SuperController<dynamic> {
  UserOrdersModel userOrdersModel = UserOrdersModel();
  getOrders() async {
    try {
      change(true, status: RxStatus.loading());
      final response = await ApiService.getData(url: 'api/orders/users');
      if (response.statusCode == 200) {
        print(response.data);
        userOrdersModel = UserOrdersModel.fromJson(response.data);

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
    getOrders();
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
