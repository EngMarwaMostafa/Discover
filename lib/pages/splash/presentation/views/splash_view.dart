import 'dart:async';
import 'package:discover/core/app_colors.dart';
import 'package:discover/core/image_assets_consts.dart';
import 'package:discover/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  bool loading = true;
  var size,height,width;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () => Get.toNamed(AppRoutes.onBoard));
  }


  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top:height*0.4,left: width*0.1),
            child: Center(
              child: SizedBox(
                width: 0.4*width,
                  height: 0.1*height,
                  child: Image.asset(ImageAssetsConstants.discoverImage)),
            ),
          ),
          SizedBox(
            height:0.25*height
           // height: 25.h,
          ),
          SpinKitCircle(
            color: AppColors.primaryColor,
            size: 70.0,
            controller: AnimationController(
                vsync: this, duration: const Duration(milliseconds: 1200)),
          ),
        ],
      ),
    );
  }
}
