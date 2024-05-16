import 'package:discover/core/app_text_style.dart';
import 'package:discover/core/image_assets_consts.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../../core/app_colors.dart';
import '../../../../../core/app_strings.dart';
import '../../../../../widgets/reusable_components.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              child: Container(
                height: 43.8.h,
                width: 90.8.h,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 2.8.h, left: 2.h, right: 2.h),
                  child: Column(
                    children: [
                      Container(
                        height: 17.h,
                        width: 37.5.w,
                        decoration: const BoxDecoration(
                          color: AppColors.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: SizedBox(
                          width: 12.w,
                          height: 4.h,
                          child: Image.asset(
                            ImageAssetsConstants.checkImg,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        AppStrings.congratulation,
                        style: AppTextStyle.bodyS.copyWith(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 0.4.h,
                      ),
                      Text(
                        AppStrings.booked,
                        style: AppTextStyle.bookedText,
                      ),
                      SizedBox(
                        height: 3.63.h,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: customButton(
                            height: 6.h,
                            width: 83.3.w,
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                            child: Text(
                              AppStrings.back,
                              style: AppTextStyle.bodyM.copyWith(
                                fontSize: 16.sp,
                                color: AppColors.white,
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
      child: customButton(
        height: 6.8.h,
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(10),
        child: Text(
          AppStrings.confirm,
          style: AppTextStyle.bodyM.copyWith(
            fontSize: 18.sp,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}