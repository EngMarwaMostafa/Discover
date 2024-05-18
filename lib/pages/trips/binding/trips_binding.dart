import 'package:get/get.dart';

import '../presentation/controller/trips_controller.dart';

class TripsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TripsController(), fenix: true);
  }
}
