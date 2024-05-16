
import 'package:discover/core/app_text_style.dart';
import 'package:discover/core/image_assets_consts.dart';
import 'package:discover/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/app_colors.dart';
import '../../../../core/app_strings.dart';
import '../../../../widgets/reusable_components.dart';

class EnterEmailView extends StatelessWidget {
  const EnterEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5.h),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                ImageAssetsConstants.logo,
                width: 27.5.w,
                height: 9.h,
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              AppStrings.forgotPassword,
              style: AppTextStyle.bodyM,
            ),
            Text(
              AppStrings.enterYourEmailORPhone,
              style: AppTextStyle.bodyS,
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 4.h,
            ),
            customTextFormField(
              borderColor: AppColors.greyColor,
              height: 6.7.h,
              hintText: AppStrings.email,
              hintStyle: AppTextStyle.bodyM
                  .copyWith(fontSize: 14.sp, color: AppColors.greyColor),
              radius: 10,
            ),
            SizedBox(
              height: 8.h,
            ),
            InkWell(
              onTap: (){
                Get.toNamed((AppRoutes.enterCode));
              },
              child: customButton(
                height: 6.8.h,
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10),
                child: Text(
                  AppStrings.sendCode,
                  style: AppTextStyle.bodyM.copyWith(
                    fontSize: 15.sp,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 4.h,),
          ],
        ),
      ),
    );
  }
}