
import 'package:get/get.dart';

import '../presentation/controller/book3_controller.dart';




class Book3Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(Book3Controller());
  }
}