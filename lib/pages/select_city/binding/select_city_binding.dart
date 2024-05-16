
import 'package:get/get.dart';

import '../presentation/controller/select_city_controller.dart';

class SelectCityBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SelectCityController());
  }
}