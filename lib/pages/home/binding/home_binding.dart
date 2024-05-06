
import 'package:get/get.dart';

import '../presentation/controller/home_controller.dart';



class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}