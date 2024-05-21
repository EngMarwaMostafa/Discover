
import 'package:discover/core/app_strings.dart';
import 'package:discover/core/app_text_style.dart';
import 'package:discover/core/image_assets_consts.dart';
import 'package:discover/pages/sign/presentation/views/widgets/custom_new_button.dart';
import 'package:discover/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../../../splash/presentation/views/widgets/custom_splash_button.dart';


class SignView extends StatelessWidget {
   const SignView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body:Center(
        child: Column(
           children: [
          //   SizedBox(height: 17.h,),
             SizedBox(
                 width: 44.w,
                 height: 13.h,
                 child: Image.asset(ImageAssetsConstants.discoverImage)),
           Lottie.asset('assets/lottie/Animation - 1714898427521.json'),
            // SizedBox(height: 14.h,),
             Text(AppStrings.journeyText,style:AppTextStyle.text10W400White(context),),
            SizedBox(height: 5.h,),
             CustomSplashButton(
                 text: AppStrings.enterText,
                 onTap:(){
                   Get.toNamed(AppRoutes.main);
                 }),
             SizedBox(height:5.h,),
             CustomNewButton(
                 text: AppStrings.newText,
                 onTap: (){})
           ],
        ),
      )
    );
  }
}
