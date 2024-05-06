
import 'package:discover/core/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';


class AppTextStyle{

  static TextStyle text40(BuildContext context)=>TextStyle(
    fontSize: 40.sp,
    fontWeight: FontWeight.w900,
    color:AppColors.blue
  );
  static TextStyle text20(BuildContext context)=>TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    color:AppColors.black
  );
  static TextStyle text18(BuildContext context)=>TextStyle(
    fontSize: 18.sp,
    color:AppColors.grey
  );
  static TextStyle text30(BuildContext context)=>TextStyle(
    fontSize: 30.sp,
    color:AppColors.white
  );
  static TextStyle text16(BuildContext context)=>TextStyle(
    fontSize: 16.sp,
    color:AppColors.blackColor
  );
  static TextStyle bodyM = GoogleFonts.cairo(
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryColor,
      locale:const Locale('ar'),
      letterSpacing: -.17);
  static TextStyle bodyS = GoogleFonts.cairo(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.blackColor,
    locale:const Locale('ar'),
  );

}