
import 'package:discover/pages/home/presentation/views/home_view.dart';
import 'package:discover/pages/main_screen/presentation/view/main_screen_view.dart';
import 'package:discover/routes/app_pages.dart';
import 'package:discover/services/api_service.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  Get.put(ApiService());
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
   // home:HomeView(),
        initialRoute: AppPages.initial,
        getPages: AppPages.routes,
      );
    });
  }
}
