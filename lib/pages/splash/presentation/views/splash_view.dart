import 'dart:async';

import 'package:discover/core/app_colors.dart';
import 'package:discover/core/image_assets_consts.dart';
import 'package:discover/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  bool loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5), () => Get.toNamed(AppRoutes.onBoard));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top:40.h,left: 10.w),
            child: SizedBox(
                width: 40.w,
                height: 10.h,
                child: Image.asset(ImageAssetsConstants.discoverImage)),
          ),
          SizedBox(height: 25.h,),
          SpinKitCircle(
            color: AppColors.blue,
            size: 70.0,
            controller: AnimationController(
                vsync: this, duration: const Duration(milliseconds: 1200)),
          ),
        ],
      ),
    );
  }
}
