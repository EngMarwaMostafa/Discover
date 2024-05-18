import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import '../../../../../core/app_strings.dart';
import '../../../../../core/app_text_style.dart';
import '../../../../../core/image_assets_consts.dart';

class PageTwo extends StatefulWidget {
   PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {

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
                        top: 7.h,
                        left: 4.w,
                        child: SizedBox(
                            width: 92.w,
                            height: 29.h,
                            child: Image.asset(ImageAssetsConstants.hotelImage))),
                  ],
                ),
              ),
              SizedBox(height: 3.h,),
              Center(
                child: Text(
                  AppStrings.title2Text,
                  style:GoogleFonts.cairo(textStyle:AppTextStyle.text20(context),),
                ),
              ),
              SizedBox(height: 3.h,),
              Center(
                child: Text(
                  AppStrings.body2Text,style: GoogleFonts.cairo(textStyle:AppTextStyle.
                text18(context).copyWith(fontWeight: FontWeight.w400),),
                ),
              ),
              // SizedBox(height: 3.h,),
              // CustomSplashButton(
              //     text: AppStrings.nextText,
              //     onTap: (){}).animate().effect(curve: Curves.easeOut,duration: 300.ms),
              // SizedBox(height: 3.h,),
              // CustomSkipButton(
              //     text: AppStrings.skipText,
              //     onTap: (){}).animate().effect(curve: Curves.easeOut,duration: 300.ms),
            ])
    );
  }
}