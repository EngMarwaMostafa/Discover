import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/app_colors.dart';
import '../../../../../core/app_strings.dart';
import '../../../../../core/app_text_style.dart';
import '../../../../../core/image_assets_consts.dart';
import '../../../../../widgets/reusable_components.dart';
import '../../../../bookings2/presentation/views/widgets/custom_book_button.dart';

    void emailAlert(BuildContext context) {
      showDialog(
        context: context,
        builder: (context) {

          return Dialog(
            //  insetPadding: EdgeInsets.only(top: 10,right: 5.w),
            child: Container(
              height: 30.h,
              width: 91.w,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 2.8.h, left: 2.h, right: 2.h),
                child: Column(
                  children: [
                    Text(
                      AppStrings.changeEmail,
                      style: AppTextStyle.text16W500Black(context),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    customTextFormField(
                      borderColor: AppColors.greyColor,
                      height: 6.7.h,
                      hintText: AppStrings.newMail,
                      hintStyle: AppTextStyle.bodyM
                          .copyWith(fontSize: 14.sp, color: AppColors.greyColor),
                      radius: 10,
                      //contentPadding: EdgeInsets.only(top: 1.h,right: 2.w),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    CustomBookButton(
                      text: AppStrings.change,
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
          );
        },
      );
    }

