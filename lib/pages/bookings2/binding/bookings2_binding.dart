
import 'package:get/get.dart';

import '../presentation/controller/bookings2_controller.dart';





class Bookings2Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(Bookings2Controller());
  }
}