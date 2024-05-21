import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../routes/app_routes.dart';

class UserService extends GetxService {
  static UserService get to => Get.find();
  GetStorage box = GetStorage('userData');
  String? userType;
  String? accessToken;
  @override
  void onInit() async {
    await Future.delayed(const Duration(seconds: 5));
    if (!box.hasData('token')) {
      Get.toNamed(AppRoutes.onBoard);
    } else if (box.hasData('token') && box.hasData('type')) {
      accessToken = box.read('token');
      userType = box.read('type');
      Get.toNamed(AppRoutes.city);
    } else {
      Get.toNamed(AppRoutes.onBoard);
    }
    super.onInit();
  }
}
