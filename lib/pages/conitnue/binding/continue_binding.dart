
import 'package:get/get.dart';

import '../presentation/controller/continue_controller.dart';



class ContinueBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ContinueController());
  }
}