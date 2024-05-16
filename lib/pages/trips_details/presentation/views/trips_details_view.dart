import 'package:discover/core/app_colors.dart';
import 'package:discover/core/image_assets_consts.dart';
import 'package:discover/pages/place/presentation/views/widgets/place_container.dart';
import 'package:discover/pages/place/presentation/views/widgets/place_row_blue.dart';
import 'package:discover/pages/splash/presentation/views/widgets/custom_splash_button.dart';
import 'package:discover/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/app_text_style.dart';

class TripsDetailsView extends StatelessWidget {
  const TripsDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading:     IconButton(
          onPressed: () {
            Get.back();
          },
          icon: (const Icon(
            Icons.arrow_back,
            color: AppColors.white,
          )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 42.h,
                width: double.infinity,
                child: Image.asset(ImageAssetsConstants.placeImg,
                fit: BoxFit.fill,
                )),
            SizedBox(
              height: 2.h,
            ),
        Padding(
          padding: EdgeInsets.only(left: 3.w,right: 3.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    AppStrings.hurgada,
                    style: AppTextStyle.text14W500Black(context),
                  ),
                  SizedBox(
                    width: 45.w,
                  ),
                  Text(
                    AppStrings.money,
                    style: AppTextStyle.text12W500Blue(context),
                  ),
                  Text(
                    AppStrings.night,
                    style: AppTextStyle.text12W500Black(context),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  const PlaceRowBlack(),
                  SizedBox(
                    width: 50.w,
                  ),
                  Icon(
                    Icons.favorite_outline_rounded,
                    color: AppColors.greyColor,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Image.asset(
                    ImageAssetsConstants.share,
                    scale: 1.5,
                  )
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                AppStrings.aboutTrip,
                style: AppTextStyle.text14W500Black(context),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                AppStrings.placeText,
                style: AppTextStyle.text10W400Gray(context),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                AppStrings.details,
                style: AppTextStyle.text14W500Black(context),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Text(
                    AppStrings.date,
                    style: AppTextStyle.text10W500Gray(context),
                  ),
                  Text(
                    AppStrings.period,
                    style: AppTextStyle.text10W500Gray(context),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
             Row(
               children:[
                 Text(
                   AppStrings.left,
                   style: AppTextStyle.text10W500Gray(context),
                 ),
                 SizedBox(width:4.w),
                 Text(
                   AppStrings.arrive,
                   style: AppTextStyle.text10W500Gray(context),
                 ),
                 ]
             ),
              SizedBox(height: 1.h,),
              Text(
                AppStrings.tripImage,
                style: AppTextStyle.text18W500Black(context),
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                height: 9.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, i) {
                    return const PlaceContainer();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 3.w,
                    );
                  },
                  itemCount: 8,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomSplashButton(text: AppStrings.bookNow, onTap: () {
                Get.toNamed(AppRoutes.book1);
              }),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        )
          ],
        ),
      ),
    );
  }
}
