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

      backgroundColor: Colors.tealAccent,
    body:
       Center(
              child:FadeInDownBig(
                  child: Image.asset(ImageAssetsConstants.logoImage)),
            ),
          );

  }
}
