import 'package:discover/pages/home/presentation/views/home_view.dart';
import 'package:discover/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
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
        title: 'اكتشف',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        ),
        debugShowCheckedModeBanner: false,
       // home: HomeView(),
        initialRoute: AppPages.initial,
        getPages: AppPages.routes,
      );
    });
  }
}
