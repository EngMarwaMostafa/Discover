
import 'package:get/get.dart';

import '../presentation/controller/bookings1_controller.dart';



class Bookings1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() =>Bookings1Controller());
  }
}