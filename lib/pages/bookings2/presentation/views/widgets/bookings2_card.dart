import 'package:discover/core/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/app_colors.dart';
import '../../../../../core/app_text_style.dart';
import '../../../../../routes/app_routes.dart';

class Bookings2Card extends StatelessWidget {
  const Bookings2Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
      Container(
        width: 22.w,
        height: 5.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor),
            borderRadius: BorderRadius.circular(10),
            color: AppColors.primaryColor),
        child: Center(
            child: Text(AppStrings.next,
                style: AppTextStyle.text16W600White(context))),
      ),
      InkWell(
        onTap: (){
          Get.toNamed(AppRoutes.completed);
        },
        child: Container(
          width: 22.w,
          height: 5.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.primaryColor,width: 1),
              color: AppColors.white),
          child: Center(
              child: Text(AppStrings.completed,
                  style: AppTextStyle.text16W600Blue(context))),
        ),
      ),
      Container(
        width: 22.w,
        height: 5.h,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.primaryColor,width: 1),
            borderRadius: BorderRadius.circular(10),
            color: AppColors.white),
        //  color: Colors.blue,
        child: Center(
            child: Text(AppStrings.canceled,
                style: AppTextStyle.text16W600Blue(context))),
      ),
    ]);
  }
}
