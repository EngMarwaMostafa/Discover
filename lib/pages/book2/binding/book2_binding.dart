
import 'package:get/get.dart';

import '../presentation/controller/book2_controller.dart';




class Book2Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(Book2Controller());
  }
}