import 'package:discover/core/app_text_style.dart';
import 'package:discover/core/image_assets_consts.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/app_colors.dart';
import '../../../../core/app_strings.dart';
import '../../../../widgets/reusable_components.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

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
              AppStrings.writeNewPassword,
              style: AppTextStyle.bodyM,
            ),
            Text(
              AppStrings.shouldBeDifferent,
              style: AppTextStyle.bodyS,
              textAlign: TextAlign.end,
            ),
            SizedBox(
              height: 4.h,
            ),
            customTextFormField(
              borderColor: AppColors.greyColor,
              height: 6.7.h,
              hintText: AppStrings.newPassword,
              radius: 10,
              hintStyle: AppTextStyle.bodyM.copyWith(
                color: AppColors.greyColor,
                fontSize: 14.sp,
              ),
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: AppColors.greyColor,
                size: 22,
              ),
            ),
            SizedBox(height: 2.h,),
            customTextFormField(
              borderColor: AppColors.greyColor,
              height: 6.7.h,
              hintText: AppStrings.confirmPassword,
              radius: 10,
              hintStyle: AppTextStyle.bodyM.copyWith(
                color: AppColors.greyColor,
                fontSize: 14.sp,
              ),
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: AppColors.greyColor,
                size: 22,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            customButton(
              height: 6.8.h,
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(10),
              child: Text(
                AppStrings.confirm,
                style: AppTextStyle.bodyM.copyWith(
                  fontSize: 15.sp,
                  color: AppColors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}