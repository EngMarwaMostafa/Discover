import 'package:discover/pages/account/presentation/views/widgets/custom_cancel_button.dart';
import 'package:discover/pages/account/presentation/views/widgets/custom_exit_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/app_colors.dart';
import '../../../../../core/app_strings.dart';
import '../../../../../core/app_text_style.dart';
import '../../../../../core/image_assets_consts.dart';
import '../../../../../widgets/reusable_components.dart';
import '../../../../bookings2/presentation/views/widgets/custom_book_button.dart';

void exitAlert(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
          title: Text(
            AppStrings.exit,
            textAlign: TextAlign.right,
            style: AppTextStyle.text16W500Black(context),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          content: SizedBox(
            height: 28.h,
            width: 91.w,
            child: Column(children: [
              Text(
                AppStrings.log,
                style: AppTextStyle.text10W400Gray(context),
              ),
              SizedBox(height: 5.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomExitButton(text: AppStrings.logOut, onTap: () {}),
                  CustomCancelButton(text: AppStrings.cancell, onTap: () {})
                ],
              )
            ]),
          )));
}
