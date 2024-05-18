import 'package:discover/core/app_colors.dart';
import 'package:discover/core/app_strings.dart';
import 'package:discover/core/app_text_style.dart';
import 'package:discover/core/image_assets_consts.dart';
import 'package:discover/pages/home/presentation/views/widgets/home_row.dart';
import 'package:discover/pages/home/presentation/views/widgets/place_row.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FamousCard extends StatelessWidget {
  const FamousCard(
      {super.key,
      required this.hotel,
      required this.city,
      required this.desc,
      required this.price});

  final String? hotel;
  final String? city;
  final String? desc;
  final String? price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 91.w,
      height: 17.h,
      child: Card(
        color: AppColors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Image(
            //     image: NetworkImage(
            //         //  controller.banners.data?[index].image ?? ''
            //         ),
            //     errorBuilder: (ctx, object, trace) => const Icon(
            //           Icons.error_outline,
            //           color: Colors.red,
            //         ),
            //     loadingBuilder: (BuildContext context, Widget child,
            //         ImageChunkEvent? loadingProgress) {
            //       if (loadingProgress == null) return child;
            //       return const Center(
            //         child: CircularProgressIndicator(),
            //       );
            //     }),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Text(
                      hotel!,
                      style: AppTextStyle.text14W500Black(context),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Icon(
                      Icons.favorite,
                      color: AppColors.redColor,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Image.asset(
                      ImageAssetsConstants.share,
                      scale: 2,
                      color: AppColors.black,
                    )
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      ImageAssetsConstants.location,
                      color: AppColors.greyColor,
                      scale: 2.5,
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text(
                      city!,
                      style: AppTextStyle.text10W400Gray(context),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  desc!,
                  style: AppTextStyle.text8W400Gray(context),
                ),
                //  SizedBox(height: 1.h,),
                Row(
                  children: [
                    Text(
                      price!,
                      style: AppTextStyle.text12W500Blue(context),
                    ),
                    Text(
                      AppStrings.night,
                      style: AppTextStyle.text12W500Black(context),
                    ),
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
