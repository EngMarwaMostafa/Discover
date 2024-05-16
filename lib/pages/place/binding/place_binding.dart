
import 'package:get/get.dart';

import '../presentation/controller/place_controller.dart';



class PlaceBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PlaceController());
  }
}