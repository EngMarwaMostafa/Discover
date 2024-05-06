
import 'package:get/get.dart';

import '../presentation/controller/login_controller.dart';



class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}