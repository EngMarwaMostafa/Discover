
import 'package:discover/core/image_assets_consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/app_colors.dart';
import '../../../../core/app_strings.dart';
import '../../../../core/app_text_style.dart';
import '../../../../routes/app_routes.dart';
import '../../../../widgets/reusable_components.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
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
                width: 27.w,
                height: 9.h,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              AppStrings.welcome,
              style: AppTextStyle.bodyM,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: AppStrings.welcomeInApp,
                    style: AppTextStyle.bodyM.copyWith(
                      color: AppColors.blackColor,
                      fontSize: 14.sp,
                    ),
                  ),
                  TextSpan(
                    text: " ${AppStrings.ektashf}",
                    style: AppTextStyle.bodyM.copyWith(fontSize: 17.sp),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.h),
            customTextFormField(
              borderColor: AppColors.greyColor,
              height: 6.7.h,
              hintText: AppStrings.emailOrPhone,
              radius: 10,
              hintStyle: AppTextStyle.bodyM.copyWith(
                color: AppColors.greyColor,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(height: 2.h),
            customTextFormField(
              borderColor: AppColors.greyColor,
              height: 6.7.h,
              hintText: AppStrings.password,
              radius: 10,
              hintStyle:AppTextStyle.bodyM.copyWith(
                color: AppColors.greyColor,
                fontSize: 14.sp,
              ),
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: AppColors.greyColor,
                size: 22,
              ),
            ),
            SizedBox(height: 7.h),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: (){
                  Get.toNamed(AppRoutes.enterEmail);
                },
                child: Text(
                  AppStrings.forgetPassword,
                  style: AppTextStyle.bodyM
                      .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(height: 12.5.h),
            customButton(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(10),
              height: 6.25.h,
              child: Text(
                AppStrings.login,
                style: AppTextStyle.bodyM
                    .copyWith(color: AppColors.whiteColor, fontSize: 18),
              ),),
            SizedBox(height: 14.h),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.register);
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: AppStrings.doNotHaveAcc,
                        style: AppTextStyle.bodyM.copyWith(
                          color: AppColors.blackColor,
                          fontSize: 14.sp,
                        ),
                      ),
                      TextSpan(
                        text: " ${AppStrings.createAcc}",
                        style: AppTextStyle.bodyM.copyWith(fontSize: 14.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}