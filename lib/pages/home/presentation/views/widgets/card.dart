import 'package:discover/core/app_colors.dart';
import 'package:discover/core/app_strings.dart';
import 'package:discover/core/app_text_style.dart';
import 'package:discover/core/image_assets_consts.dart';
import 'package:discover/pages/home/presentation/views/widgets/home_row.dart';
import 'package:discover/pages/home/presentation/views/widgets/place_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.unPrice});
  final String? title;
  final String? image;
  final String? price;
  final String? unPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42.w,
      height: 29.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.primaryColor),
      ),
      child: Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height:0.5.h,),
         SizedBox(
        //  width:40.w,
           height:17.h ,
           child:Image.asset(image!),
         ),
          Padding(
            padding:EdgeInsets.only(left: 1.w,right: 1.w,bottom: 1.h),
            child:const HomeRow(),
          ),
        const PlaceRow(),
          SizedBox(height: 1.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(price!,style: AppTextStyle.text10W500Blue(context),),
              Text(AppStrings.night,style: AppTextStyle.text10W500Black(context),),
              Text(unPrice!,style: AppTextStyle.text10W500GrayLine(context))
            ],
          )
        ],
      ),
    );
  }
}
