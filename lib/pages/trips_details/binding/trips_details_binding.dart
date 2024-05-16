
import 'package:get/get.dart';

import '../presentation/controller/trips_details_controller.dart';



class TripsDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TripsDetailsController());
  }
}