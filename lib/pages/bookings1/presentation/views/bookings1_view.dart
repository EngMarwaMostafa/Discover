import 'package:discover/core/image_assets_consts.dart';
import 'package:discover/pages/bookings1/presentation/views/widgets/bookings1_card.dart';
import 'package:discover/pages/bookings1/presentation/views/widgets/custom_booking1_button.dart';
import 'package:discover/pages/bookings2/presentation/views/widgets/bookings2_card.dart';
import 'package:discover/pages/bookings2/presentation/views/widgets/custom_book_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/app_colors.dart';
import '../../../../core/app_strings.dart';
import '../../../../core/app_text_style.dart';
import '../../../../routes/app_routes.dart';

class Bookings1View extends StatelessWidget {
  const Bookings1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Get.back();
          },
          child: const Icon(Icons.arrow_back,
          ),
        ),
        toolbarHeight: 12.h,
        title: Text(
          AppStrings.bookingsTitle,
          style: AppTextStyle.text18W600Black(context),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 5.h,
            child: const Bookings1Card(),
          ),
          SizedBox(height: 5.h),
          Container(
            width: 91.w,
            height: 22.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: AppColors.primaryColor)),
            child: Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 1.h,right: 1.w,bottom: 1.h),
                  child: Image.asset(ImageAssetsConstants.bookImg),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 4.w, left: 4.w, top: 1.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            AppStrings.hurgada,
                            style: AppTextStyle.text12W600Black(context),
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          Text(AppStrings.thousand,
                              style: AppTextStyle.text10W400Blue(context)),
                          SizedBox(
                            width: 1.w,
                          ),
                          Text(AppStrings.pound,
                              style: AppTextStyle.text10W400Black(context)),
                          SizedBox(
                            width: 2.w,
                          ),
                          Icon(
                            Icons.favorite,
                            color: AppColors.redColor,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Image.asset(
                            ImageAssetsConstants.share,
                            scale: 2,
                          )
                        ],
                      ),
                      SizedBox(height: 2.h,),
                      Row(
                        children: [
                          Image.asset(
                            ImageAssetsConstants.book,
                            color: AppColors.primaryColor,
                            scale: 2,
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(AppStrings.date,
                                  style: AppTextStyle.text10W500Black(context)),
                              Text(
                                AppStrings.period,
                                style: AppTextStyle.text8W400Black(context),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 2.h,),
                      Row(
                      children:[
                        Image.asset(ImageAssetsConstants.location,scale: 2.5,),
                        Text(AppStrings.address,style: AppTextStyle.text12W500BlackCo(context),),
                      ]
                      ),
                      SizedBox(height: 2.h,),
                      CustomBooking1Button(
                          text: AppStrings.details,
                          onTap: (){})
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Container(
            width: 91.w,
            height: 22.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: AppColors.primaryColor)),
            child: Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 1.h,right: 1.w,bottom: 1.h),
                  child: Image.asset(ImageAssetsConstants.bookImg),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 4.w, left: 4.w, top: 1.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            AppStrings.marshal,
                            style: AppTextStyle.text12W600Black(context),
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          Text(AppStrings.thousand,
                              style: AppTextStyle.text10W400Blue(context)),
                          SizedBox(
                            width: 1.w,
                          ),
                          Text(AppStrings.pound,
                              style: AppTextStyle.text10W400Black(context)),
                          SizedBox(
                            width: 2.w,
                          ),
                          Icon(
                            Icons.favorite,
                            color: AppColors.redColor,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Image.asset(
                            ImageAssetsConstants.share,
                            scale: 2,
                          )
                        ],
                      ),
                      SizedBox(height: 2.h,),
                      Row(
                        children: [
                          Image.asset(
                            ImageAssetsConstants.book,
                            color: AppColors.primaryColor,
                            scale: 2,
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(AppStrings.date,
                                  style: AppTextStyle.text10W500Black(context)),
                              Text(
                                AppStrings.period,
                                style: AppTextStyle.text8W400Black(context),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 2.h,),
                      Row(
                          children:[
                            Image.asset(ImageAssetsConstants.location,scale: 2.5,),
                            Text(AppStrings.address,style: AppTextStyle.text12W500BlackCo(context),),
                          ]
                      ),
                      SizedBox(height: 2.h,),
                      CustomBooking1Button(
                          text: AppStrings.cancel,
                          onTap: (){
                            Get.toNamed(AppRoutes.bookings2);
                          })
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
