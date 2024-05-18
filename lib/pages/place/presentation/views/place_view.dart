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

class PlaceView extends StatelessWidget {
  const PlaceView({super.key, this.money, this.hotel, this.desc});
 final String? money;
 final String? hotel;
 final String? desc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: (const Icon(
              Icons.arrow_forward,
              color: AppColors.white,
            )),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(ImageAssetsConstants.placeImg,),
          SizedBox(
            height: 2.h,
          ),
      Padding(
        padding: EdgeInsets.only(left: 3.w,right: 3.w),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                 hotel!,
                  style: AppTextStyle.text14W500Black(context),
                ),
                SizedBox(
                  width: 45.w,
                ),
                Text(
                 money!,
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
                const PlaceRowBlue(),
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
             desc!,
              style: AppTextStyle.text10W400Gray(context),
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              AppStrings.hotelImage,
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
              height: 8.h,
            ),
            CustomSplashButton(text: AppStrings.bookNow, onTap: () {
              Get.toNamed(AppRoutes.book1);
            })
          ],
        ),
      )
        ],
      ),
    );
  }
}
