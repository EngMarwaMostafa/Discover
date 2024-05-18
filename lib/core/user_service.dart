import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../routes/app_routes.dart';

class UserService extends GetxService {
  static UserService get to => Get.find();
  @override
  void onInit() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.get('token');
    if (token == null) {
      Get.toNamed(AppRoutes.onBoard);
    } else {
      Get.toNamed(AppRoutes.city);
    }
    super.onInit();
  }
}
