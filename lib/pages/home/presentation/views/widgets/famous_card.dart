import 'package:discover/core/app_colors.dart';
import 'package:discover/core/app_strings.dart';
import 'package:discover/core/app_text_style.dart';
import 'package:discover/core/image_assets_consts.dart';
import 'package:discover/pages/home/presentation/views/widgets/home_row.dart';
import 'package:discover/pages/home/presentation/views/widgets/place_row.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FamousCard extends StatelessWidget {
  const FamousCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 91.w,
      height:17.h,
      child: Card(
        color: AppColors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(ImageAssetsConstants.famous),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 1.h,),
          Row(
            children: [
              Text(AppStrings.marshal,style: AppTextStyle.text14W500Black(context),),
              SizedBox(width: 15.w,),
              Icon(Icons.favorite,color: AppColors.redColor,),
              SizedBox(width:3.w,),
              Image.asset(ImageAssetsConstants.share,scale: 2,color: AppColors.black,)
            ],
          ),
                SizedBox(height: 1.h,),
                const PlaceRow(),
                SizedBox(height: 1.h,),
                Text(AppStrings.bestPlaces,style: AppTextStyle.text8W400Gray(context),),
              //  SizedBox(height: 1.h,),
                Row(
                  children: [
                    Text(AppStrings.money,style: AppTextStyle.text12W500Blue(context),),
                    Text(AppStrings.night,style: AppTextStyle.text12W500Black(context),),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
