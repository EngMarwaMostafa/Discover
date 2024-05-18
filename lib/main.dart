import 'package:discover/pages/conitnue/presentation/views/continue_view.dart';
import 'package:discover/pages/home/presentation/views/home_view.dart';
import 'package:discover/pages/main_screen/presentation/view/main_screen_view.dart';
import 'package:discover/pages/on_board/presentation/views/onboard_view.dart';
import 'package:discover/pages/sign/presentation/views/sign_view.dart';
import 'package:discover/pages/splash/presentation/views/splash_view.dart';
import 'package:discover/routes/app_pages.dart';
import 'package:discover/services/api_service.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';

import 'core/user_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init('userData');
  Get.put(ApiService());
  Get.put(UserService());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        locale: const Locale('ar'),
        builder: EasyLoading.init(),
        title: 'اكتشف',
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        supportedLocales: const [
          Locale('ar', ''),
        ],
        debugShowCheckedModeBanner: false,
        // home: ContinueAsView(),
        initialRoute: AppPages.initial,
        getPages: AppPages.routes,
      );
    });
  }
}
