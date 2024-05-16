
import 'package:get/get.dart';

import '../presentation/controller/book1_controller.dart';




class Book1Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(Book1Controller());
  }
}