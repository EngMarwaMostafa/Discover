
import 'package:get/get.dart';

import '../presentation/controller/offers_controller.dart';



class OffersBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OffersController());
  }
}