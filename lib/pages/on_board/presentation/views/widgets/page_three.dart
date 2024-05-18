import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/app_strings.dart';
import '../../../../../core/app_text_style.dart';
import '../../../../../core/image_assets_consts.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            children: [
              SizedBox(
                height: 46.h,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                        top: -20.h,
                        bottom: 0,
                        child: Image.asset(ImageAssetsConstants.board2Image)),
                    Positioned(
                        top: 4.h,
                        left: 10.w,
                        child: SizedBox(
                            width: 79.w,
                            height: 36.h,
                            child: Image.asset(ImageAssetsConstants.carImage))),
                  ],
                ),
              ),
              SizedBox(height: 3.h,),
              Center(
                child: Text(
                  AppStrings.title3Text,
                  style:GoogleFonts.cairo(textStyle:AppTextStyle.text20(context),),
                ),
              ),
              SizedBox(height: 3.h,),
              Center(
                child: Text(
                  AppStrings.body3Text,style: GoogleFonts.cairo(textStyle:AppTextStyle.
                text18(context).copyWith(fontWeight: FontWeight.w400),),
                ),
              ),
              // SizedBox(height: 3.h,),
              // CustomSplashButton(
              //     text: AppStrings.startText,
              //     onTap: (){}).animate().effect(curve: Curves.easeOut,duration: 300.ms),
              // SizedBox(height: 3.h,),
              // CustomSkipButton(
              //     text: AppStrings.skipText,
              //     onTap: (){}).animate().effect(curve: Curves.easeOut,duration: 300.ms),
            ]));
  }
}