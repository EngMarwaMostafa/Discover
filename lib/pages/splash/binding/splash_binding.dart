
import 'package:get/get.dart';

import '../presentation/controller/splash_controller.dart';



class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}