import 'package:discover/core/app_text_style.dart';
import 'package:discover/core/image_assets_consts.dart';
import 'package:discover/pages/enter_code/presentation/views/widgets/custom_form_field_code.dart';
import 'package:discover/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/app_colors.dart';
import '../../../../core/app_strings.dart';
import '../../../../widgets/reusable_components.dart';

class EnterCodeView extends StatelessWidget {
  const EnterCodeView({super.key});

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
              AppStrings.enterCode,
              style: AppTextStyle.bodyM,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: AppStrings.pleaseEnterCode,
                    style: AppTextStyle.bodyS,
                  ),
                  TextSpan(
                    text: AppStrings.num4,
                    style: AppTextStyle.bodyM.copyWith(
                      fontSize: 16.sp,
                    ),
                  ),
                  TextSpan(
                    text: AppStrings.numbers,
                    style: AppTextStyle.bodyS,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomFormFieldCode(),
                SizedBox(width: 5.5.w),
                const CustomFormFieldCode(),
                SizedBox(width: 5.5.w),
                const CustomFormFieldCode(),
                SizedBox(width: 5.5.w),
                const CustomFormFieldCode(),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            InkWell(
              onTap: (){
                Get.toNamed(AppRoutes.newPassword);
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
            SizedBox(
              height: 4.h,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: AppStrings.reSend,
                      style:AppTextStyle.bodyM.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                    ),
                    TextSpan(
                      text: AppStrings.within,
                      style: AppTextStyle.bodyS.copyWith(fontWeight: FontWeight.w500),
                    ),
                    TextSpan(
                      text: AppStrings.seconds,
                      style: AppTextStyle.bodyS,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}