import 'package:discover/core/app_colors.dart';
import 'package:discover/pages/favorite/presentation/controller/favorite_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/app_strings.dart';
import '../../../../core/app_text_style.dart';
import '../../../../core/image_assets_consts.dart';

class FavoriteView extends GetView<FavoriteController> {
  const FavoriteView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
        toolbarHeight: 12.h,
        title: Text(
          AppStrings.favorite,
          style: AppTextStyle.text18W600Black(context),
        ),
        centerTitle: true,
      ),
      body: controller.obx(
        (state) => ListView.separated(
          padding: EdgeInsets.only(left: 2.w, right: 2.w),
          itemCount: controller.favModel.data?.length ?? 0,
          itemBuilder: (context, i) {
            return Container(
              width: 91.w,
              height: 15.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: AppColors.primaryColor)),
              child: Row(
                children: [
                  SizedBox(
                      width: 31.w,
                      height: 12.h,
                      child: Image(
                        image: NetworkImage(
                            controller.favModel.data?[i].service?.imageUrl ??
                                ''),
                      )),
                  Padding(
                    padding: EdgeInsets.only(right: 2, left: 4.w, top: 1.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              controller.favModel.data?[i].service?.title ?? '',
                              style: AppTextStyle.text12W600Black(context),
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            Text(
                                controller.favModel.data?[i].service
                                        ?.priceAfterDiscount ??
                                    '',
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
                        SizedBox(
                          height: 1.h,
                        ),
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
                                Text('date'!,
                                    style:
                                        AppTextStyle.text10W500Black(context)),
                                Text(
                                  'period'!,
                                  style: AppTextStyle.text8W400Black(context),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(children: [
                          Image.asset(
                            ImageAssetsConstants.location,
                            scale: 2.5,
                          ),
                          Text(
                            'city'!,
                            style: AppTextStyle.text12W500BlackCo(context),
                          ),
                        ]),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 2.h,
            );
          },
        ),
      ),
    );
  }
}
