
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/app_colors.dart';
import '../../../../core/app_strings.dart';
import '../../../../core/app_text_style.dart';
import '../../../../widgets/reusable_components.dart';
import '../../../book1/presentation/views/widgets/confirm_button.dart';


class Book2View extends StatelessWidget {
  const Book2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 12.25.h,
        title: Text(
          AppStrings.bookTitle,
          style: AppTextStyle.titleM,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: Column(
          children: [
            customTextFormField(
              borderColor: AppColors.greyColor,
              height: 6.7.h,
              hintText: AppStrings.visaName,
              hintStyle: AppTextStyle.bodyM
                  .copyWith(fontSize: 14.sp, color: AppColors.greyColor),
              radius: 10,
              //contentPadding: EdgeInsets.only(top: 1.h,right: 2.w),
            ),
            SizedBox(
              height: 2.h,
            ),
            customTextFormField(
              borderColor: AppColors.greyColor,
              height: 6.7.h,
              hintText: AppStrings.visaNumber,
              hintStyle: AppTextStyle.bodyM
                  .copyWith(fontSize: 14.sp, color: AppColors.greyColor),
              radius: 10,
            ),
            SizedBox(
              height: 2.h,
            ),
            customTextFormField1(
              borderColor: AppColors.greyColor,
              height: 6.7.h,
              hintText: AppStrings.cvvCode,
              hintStyle: AppTextStyle.bodySs,
              radius: 10,
            ),
            SizedBox(
              height: 8.h,
            ),
            const ConfirmButton(),
          ],
        ),
      ),
    );
  }
}
