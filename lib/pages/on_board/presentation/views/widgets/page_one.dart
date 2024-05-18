import 'dart:core';
import 'package:discover/core/app_strings.dart';
import 'package:discover/core/app_text_style.dart';
import 'package:discover/core/image_assets_consts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class PageOne extends StatefulWidget {
 const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {

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
                    child: Image.asset(ImageAssetsConstants.board1Image)),
                Positioned(
                    top: 17.h,
                    left: 32.w,
                    child: SizedBox(
                        width: 35.w,
                        height: 13.h,
                        child: Image.asset(ImageAssetsConstants.planeImage))),
              ],
            ),
          ),
              SizedBox(height: 3.h,),
              Center(
                child: Text(
                  AppStrings.title1Text,
                  style:GoogleFonts.cairo(textStyle:AppTextStyle.text20(context),),
                ),
              ),
              SizedBox(height: 3.h,),
              Center(
                child: Text(
                  AppStrings.body1Text,style: GoogleFonts.cairo(textStyle:AppTextStyle.
                text18(context).copyWith(fontWeight: FontWeight.w400),),
                ),
              ),
        ]));
  }
}

