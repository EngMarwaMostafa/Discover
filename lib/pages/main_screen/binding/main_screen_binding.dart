
import 'package:discover/pages/trips/binding/trips_binding.dart';
import 'package:get/get.dart';

import '../../favorite/binding/favorite_binding.dart';
import '../../home/binding/home_binding.dart';
import '../presentation/controller/main_screen_controller.dart';

class MainScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainScreenController());
    HomeBinding().dependencies();
    TripsBinding().dependencies();
    FavoritesBinding().dependencies();
  }
}
