import 'package:discover/core/image_assets_consts.dart';
import 'package:discover/pages/home/presentation/views/widgets/place_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/app_colors.dart';
import '../../../../../core/app_strings.dart';
import '../../../../../core/app_text_style.dart';

class PlacesCard extends StatelessWidget {
  const PlacesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 50.w,
        height: 15.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [
              AppColors.black.withOpacity(0.3),
              AppColors.black.withOpacity(1),
            ])
        ),
        child: Image.asset(
          ImageAssetsConstants.bookImg,
          fit: BoxFit.fill,
        ),

      ),
      Positioned(
        bottom: 5.h,
        right: 2.w,
        child: Row(
          children: [
            Text(
              AppStrings.marshal,
              style: AppTextStyle.text14W500White(context),
            ),
            SizedBox(width:7.w,),
            Icon(
              Icons.favorite,
              color: AppColors.redColor,
            ),
            SizedBox(width:1.w,),
            Image.asset(
              ImageAssetsConstants.share,
              scale: 2,
              color: AppColors.white,
            )
          ],
        ),
      ),
      Positioned(
        bottom: 1.h,
        right: 2.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              ImageAssetsConstants.location,
              color: AppColors.white,
              scale: 2.5,
            ),
            Text(
              AppStrings.matrouh,
              style: AppTextStyle.text10W400White(context),
            ),
            SizedBox(width:4.w,),
            Text(
              AppStrings.place,
              style: AppTextStyle.text12W500White(context)
            ),
          ],
        ),
      ),
    ]);
  }
}
