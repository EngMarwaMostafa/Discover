
import 'package:get/get.dart';

import '../presentation/controller/completed_bookings_controller.dart';





class CompletedBookingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CompletedBookingsController());
  }
}