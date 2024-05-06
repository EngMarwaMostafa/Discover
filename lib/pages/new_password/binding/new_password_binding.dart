
import 'package:get/get.dart';

import '../presentation/controller/new_password_controller.dart';



class NewPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NewPasswordController());
  }
}