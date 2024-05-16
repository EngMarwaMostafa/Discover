
import 'package:get/get.dart';

import '../presentation/controller/favorite_controller.dart';



class FavoritesBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FavoriteController());
  }
}