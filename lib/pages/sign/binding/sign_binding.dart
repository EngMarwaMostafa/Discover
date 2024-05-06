
import 'package:get/get.dart';

import '../presentation/controller/sign_controller.dart';



class SignBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SignController());
  }
}