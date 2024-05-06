
import 'package:get/get.dart';

import '../presentation/controller/onBoard_controller.dart';


class OnBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OnBoardController());
  }
}