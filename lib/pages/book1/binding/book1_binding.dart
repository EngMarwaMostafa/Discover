import 'package:get/get.dart';

import '../presentation/controller/book1_controller.dart';

class Book1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Book1Controller(),fenix: true);
  }
}
