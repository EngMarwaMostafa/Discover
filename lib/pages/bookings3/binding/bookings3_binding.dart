
import 'package:get/get.dart';

import '../presentation/controller/bookings3_controller.dart';



class Bookings3Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(Bookings3Controller());
  }
}