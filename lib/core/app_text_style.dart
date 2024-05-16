import 'package:discover/core/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AppTextStyle {
  static TextStyle text40(BuildContext context) => TextStyle(
      fontSize: 40.sp,
      fontWeight: FontWeight.w900,
      color: AppColors.primaryColor);

  static TextStyle text20(BuildContext context) => TextStyle(
      fontSize: 20.sp, fontWeight: FontWeight.w700, color: AppColors.black);

  static TextStyle text18(BuildContext context) =>
      TextStyle(fontSize: 18.sp, color: AppColors.grey);

  static TextStyle text30(BuildContext context) =>
      TextStyle(fontSize: 30.sp, color: AppColors.white);

  static TextStyle text16W600Blue(BuildContext context) => GoogleFonts.cairo(
      fontSize: 16.sp, color: AppColors.primaryColor, fontWeight: FontWeight.w600);
  static TextStyle text16W600White(BuildContext context) => GoogleFonts.cairo(
      fontSize: 16.sp, color: AppColors.white, fontWeight: FontWeight.w600);
  static TextStyle text16W600Black(BuildContext context) => GoogleFonts.cairo(
      fontSize: 16.sp, color: AppColors.black, fontWeight: FontWeight.w600);
  static TextStyle text16W600Primary(BuildContext context) => GoogleFonts.readexPro(
      fontSize: 16.sp, color: AppColors.primaryColor, fontWeight: FontWeight.w600);
  static TextStyle text10W400Primary(BuildContext context) => GoogleFonts.readexPro(
      fontSize: 10.sp, color: AppColors.primaryColor, fontWeight: FontWeight.w400);
  static TextStyle text10W400Black(BuildContext context) => GoogleFonts.readexPro(
      fontSize: 10.sp, color: AppColors.black, fontWeight: FontWeight.w400);

  static TextStyle text18W600Black(BuildContext context) => GoogleFonts.cairo(
      fontSize: 18.sp, color: AppColors.blackColor, fontWeight: FontWeight.w600);
  static TextStyle text18W500Black(BuildContext context) => GoogleFonts.cairo(
      fontSize: 18.sp, color: AppColors.blackColor, fontWeight: FontWeight.w500);
  static TextStyle text10W500Black(BuildContext context) => GoogleFonts.cairo(
      fontSize: 10.sp, color: AppColors.blackColor, fontWeight: FontWeight.w500);
  static TextStyle text10W500White(BuildContext context) => GoogleFonts.cairo(
      fontSize: 10.sp, color: AppColors.white, fontWeight: FontWeight.w500);
  static TextStyle text10W500Blue(BuildContext context) => GoogleFonts.cairo(
      fontSize: 10.sp, color: AppColors.primaryColor, fontWeight: FontWeight.w500);
  static TextStyle text16W500White(BuildContext context) => GoogleFonts.cairo(
      fontSize: 16.sp, color: AppColors.white, fontWeight: FontWeight.w500);
  static TextStyle text18W400Black(BuildContext context) => GoogleFonts.cairo(
      fontSize: 18.sp, color: AppColors.blackColor, fontWeight: FontWeight.w400);

  static TextStyle text14W500Grey(BuildContext context) => GoogleFonts.cairo(
      fontSize: 14.sp, color: AppColors.greyColor, fontWeight: FontWeight.w500);

  static TextStyle text14W500Black(BuildContext context) => GoogleFonts.cairo(
      fontSize: 14.sp,
      color: AppColors.blackColor,
      fontWeight: FontWeight.w500);
  static TextStyle text14W500White(BuildContext context) => GoogleFonts.cairo(
      fontSize: 14.sp,
      color: AppColors.white,
      fontWeight: FontWeight.w500);

  static TextStyle text16W500(BuildContext context) =>
      GoogleFonts.cairo(fontSize:16.sp,fontWeight: FontWeight.w500, color: AppColors.white,);
  static TextStyle text15W500(BuildContext context) =>
      GoogleFonts.cairo(fontSize:15.sp,fontWeight: FontWeight.w500, color: AppColors.white,);
  static TextStyle text15W700(BuildContext context) =>
      GoogleFonts.cairo(fontSize:15.sp,fontWeight: FontWeight.w700, color: AppColors.blackColor,);

  static TextStyle text16W500Blue(BuildContext context) => GoogleFonts.cairo(
      fontSize:16.sp,
      fontWeight: FontWeight.w500, color: AppColors.primaryColor);

  static TextStyle text16W500Black(BuildContext context) => GoogleFonts.cairo(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.blackColor);

  static TextStyle text14W600(BuildContext context) => GoogleFonts.cairo(
      fontSize: 14.sp, color: AppColors.greyColor, fontWeight: FontWeight.w600);

  static TextStyle text12W500Blue(BuildContext context) => GoogleFonts.cairo(
      fontSize: 12.sp,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w500);
  static TextStyle text12W500Black(BuildContext context) => GoogleFonts.cairo(
      fontSize: 12.sp,
      color: AppColors.black,
      fontWeight: FontWeight.w500);
  static TextStyle text12W500Grey(BuildContext context) => GoogleFonts.readexPro(
      fontSize: 12.sp,
      color: AppColors.greyColor,
      fontWeight: FontWeight.w500);
  static TextStyle text12W400Gray(BuildContext context) => GoogleFonts.cairo(
      fontSize: 12.sp,
      color: AppColors.greyColor,
      fontWeight: FontWeight.w400);

  static TextStyle text12W500BlackCo(BuildContext context) => GoogleFonts.cairo(
      fontSize: 12.sp, color: AppColors.blackColor, fontWeight: FontWeight.w500);
  static TextStyle text12W400Blue(BuildContext context) => GoogleFonts.cairo(
      fontSize: 12.sp, color: AppColors.primaryColor, fontWeight: FontWeight.w400);
  static TextStyle text12W600Black(BuildContext context) => GoogleFonts.cairo(
      fontSize: 12.sp, color: AppColors.blakColor, fontWeight: FontWeight.w600);
  static TextStyle text12W500White(BuildContext context) => GoogleFonts.cairo(
      fontSize: 12.sp, color: AppColors.white, fontWeight: FontWeight.w500);

  static TextStyle text10W500GrayLine(BuildContext context) => GoogleFonts.cairo(
        fontSize: 10.sp,
        decoration: TextDecoration.lineThrough,
        color: AppColors.greyColor,
        fontWeight: FontWeight.w500,
      );
  static TextStyle text10W500Gray(BuildContext context) => GoogleFonts.cairo(
        fontSize: 10.sp,
        color: AppColors.greyColor,
        fontWeight: FontWeight.w500,
      );

  static TextStyle text8W400Gray(BuildContext context) => GoogleFonts.cairo(
      fontSize: 8.sp, color: AppColors.greyColor, fontWeight: FontWeight.w400);
  static TextStyle text8W400Black(BuildContext context) => GoogleFonts.cairo(
      fontSize: 8.sp, color: AppColors.black, fontWeight: FontWeight.w400);

  static TextStyle text10W400Gray(BuildContext context) => GoogleFonts.cairo(
      fontSize: 10.sp, color: AppColors.greyColor, fontWeight: FontWeight.w400);
  static TextStyle text10W400Blue(BuildContext context) => GoogleFonts.cairo(
      fontSize: 10.sp, color: AppColors.primaryColor, fontWeight: FontWeight.w400);
  static TextStyle text10W400Gry(BuildContext context) => GoogleFonts.cairo(
      fontSize: 10.sp, color: AppColors.gryColor, fontWeight: FontWeight.w400);
  static TextStyle text10W400White(BuildContext context) => GoogleFonts.cairo(
      fontSize: 10.sp, color: AppColors.white, fontWeight: FontWeight.w400);

  static TextStyle text14Decoration(BuildContext context) => GoogleFonts.cairo(
      fontSize: 14.sp,
      decoration: TextDecoration.underline,
      decorationColor:AppColors.primaryColor,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w600);

  static TextStyle bodyM = GoogleFonts.cairo(
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryColor,
      locale: const Locale('ar'),
      letterSpacing: -.17);
  static TextStyle bodyS = GoogleFonts.cairo(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.blackColor,
    locale: const Locale('ar'),
  );
  static TextStyle titleM = GoogleFonts.cairo(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.blackColor,
    locale: const Locale('ar'),
  );

  static TextStyle bodySs = GoogleFonts.cairo(
    fontSize: 14.sp,
    color: AppColors.greyColor,
    fontWeight: FontWeight.w600,
  );
  static TextStyle bookedText = GoogleFonts.readexPro(
    fontSize: 14.sp,
    color: AppColors.greyColor,
    fontWeight: FontWeight.w400,
    locale: const Locale('ar'),
  );
}
