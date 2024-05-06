
import 'package:get/get.dart';

import '../presentation/controller/enter_code_controller.dart';



class EnterCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EnterCodeController());
  }
}