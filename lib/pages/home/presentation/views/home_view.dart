import 'package:carousel_slider/carousel_slider.dart';
import 'package:discover/pages/home/presentation/controller/home_controller.dart';
import 'package:stylish_text/stylish_text.dart';
import 'package:discover/core/app_colors.dart';
import 'package:discover/core/app_strings.dart';
import 'package:discover/core/app_text_style.dart';
import 'package:discover/core/image_assets_consts.dart';
import 'package:discover/pages/home/presentation/views/widgets/card.dart';
import 'package:discover/pages/home/presentation/views/widgets/famous_card.dart';
import 'package:discover/pages/home/presentation/views/widgets/places_card.dart';
import 'package:discover/routes/app_routes.dart';
import 'package:discover/widgets/search_edit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'مطاعم',
    'فنادق',
    'قهاوي',
    'محلات',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: controller.obx(
          (state) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                        width: 11.w,
                        height: 5.h,
                        child: Image.asset(ImageAssetsConstants.user)),
                    Padding(
                      padding: EdgeInsets.only(right: 2.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.welcome,
                            style: AppTextStyle.text16W500Black(context),
                          ),
                          Text(
                            AppStrings.userName,
                            style: AppTextStyle.text16W500Blue(context),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 42.w,
                    ),
                    SizedBox(
                        width: 7.w,
                        height: 3.h,
                        child: Image.asset(ImageAssetsConstants.notifications)),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              const Search(),
              // Container(
              //   width: 91.w,
              //   height: 19.h,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //       color: AppColors.primaryColor),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       SizedBox(
              //         height: 5.h,
              //       ),
              //       Text(
              //         textAlign: TextAlign.right,
              //         AppStrings.enjoy,
              //         style: AppTextStyle.text16W500(context),
              //       ),
              //       Image.asset(ImageAssetsConstants.woman),
              //     ],
              //   ),
              // ),
              CarouselSlider(
                options: CarouselOptions(height: 19.h),
                items: List.generate(
                  controller.banners.data?.length ?? 0,
                  (index) => Image(
                      image: NetworkImage(
                          controller.banners.data?[index].image ?? ''),
                      errorBuilder: (ctx, object, trace) => const Icon(
                            Icons.error_outline,
                            color: Colors.red,
                          ),
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 4.w, top: 3.h, bottom: 3.h, right: 3.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.offers,
                      style: AppTextStyle.text16W600Black(context),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.offers);
                      },
                      child: Text(AppStrings.all,
                          style: AppTextStyle.text14Decoration(context)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 4.w),
                child: SizedBox(
                  height: 29.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: controller.offers.data?.length ?? 0,
                    itemBuilder: (context, i) {
                      return MyCard(
                        title: controller.offers.data?[i].service?.title ?? '',
                        image: controller.offers.data?[i].service?.image ?? '',
                        price: controller.offers.data?[i].service?.price ?? '',
                        unPrice:
                            controller.offers.data?[i].service?.unPrice ?? '',
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 4.w,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 4.w, top: 3.h, bottom: 3.h, right: 3.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OscillateText(
                      AppStrings.places,
                      style: AppTextStyle.text16W600Black(context),
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.place);
                        },
                        child: Text(AppStrings.all,
                            style: AppTextStyle.text14Decoration(context))),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 4.w),
                child: SizedBox(
                  height: 15.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, i) {
                      return const PlacesCard();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 4.w,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                width: 91.w,
                height: 19.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.primaryColor),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      textAlign: TextAlign.right,
                      AppStrings.enjoy,
                      style: AppTextStyle.text15W500(context),
                    ),
                    // SizedBox(
                    //     width: 35.w,
                    //     child: Image(
                    //         image: NetworkImage(
                    //             controller.banners.data?[index].image ?? ''
                    //         ),
                    //         errorBuilder: (ctx, object, trace) => const Icon(
                    //           Icons.error_outline,
                    //           color: Colors.red,
                    //         ),
                    //         loadingBuilder: (BuildContext context, Widget child,
                    //             ImageChunkEvent? loadingProgress) {
                    //           if (loadingProgress == null) return child;
                    //           return const Center(
                    //             child: CircularProgressIndicator(),
                    //           );
                    //         }
                    //     ),
                    // ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 3.w, top: 3.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OscillateText(
                      AppStrings.famous,
                      style: AppTextStyle.text16W600Black(context),
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                    Text(AppStrings.all,
                        style: AppTextStyle.text14Decoration(context)),
                  ],
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     RichText(
              //       text: TextSpan(
              //         text: AppStrings.famous,
              //         style: AppTextStyle.text16W600(context),
              //         children: <TextSpan>[
              //           TextSpan(
              //               text: AppStrings.hotels,
              //               style: AppTextStyle.text14W600(context)),
              //         ],
              //       ),
              //     ),
              //     Text(AppStrings.all,
              //         style: AppTextStyle.text14Decoration(context)),
              //   ],
              // ),

              ListView.separated(
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 7,
                itemBuilder: (context, i) {
                  return const FamousCard(
                    hotel: '',
                    city: '',
                    desc: '',
                    price: '',
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 2.h,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
