import 'package:get/get.dart';

import '../presentation/controller/favorite_controller.dart';

class FavoritesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavoriteController(), fenix: true);
  }
}
