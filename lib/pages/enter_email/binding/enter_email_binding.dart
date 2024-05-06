
import 'package:get/get.dart';

import '../presentation/controller/enter_email_controller.dart';



class EnterEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EnterEmailController());
  }
}