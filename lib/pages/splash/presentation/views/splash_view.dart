import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:discover/core/app_colors.dart';
import 'package:discover/core/image_assets_consts.dart';
import 'package:discover/core/user_service.dart';
import 'package:discover/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  bool loading = true;
  var size, height, width;

  @override
  void initState() {

    super.initState();
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
            padding: EdgeInsets.only(top: height * 0.2, left: width * 0.03),
            child: Center(
              child: FadeInDownBig(
                  // from: 100,
                  // duration: const Duration(seconds: 5),
                  // infinite: true,
                  child: Image.asset(ImageAssetsConstants.logoImage)),
            ),
          ),
          SizedBox(height: 0.25 * height),
          // SpinKitCircle(
          //   color: AppColors.primaryColor,
          //   size: 70.0,
          // ),
        ],
      ),
    );
  }
}
