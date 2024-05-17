import 'package:discover/core/app_colors.dart';
import 'package:discover/pages/select_city/presentation/controller/select_city_controller.dart';
import 'package:discover/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/app_text_style.dart';

class SelectCityView extends GetView<SelectCityController> {
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
          AppStrings.city,
          style: AppTextStyle.text18W600Black(context),
        ),
        centerTitle: true,
      ),
      body: controller.obx(
        (state) => GridView.builder(
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // number of items in each row
              mainAxisSpacing: 12.0, // spacing between rows
              crossAxisSpacing: 12.0,
              childAspectRatio: 0.8),
          padding: const EdgeInsets.all(8.0), // padding around the grid
          itemCount:
              controller.cities.data?.length ?? 0, // total number of items
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Get.toNamed(AppRoutes.main);
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor),
                    borderRadius: BorderRadius.circular(10)
                    // color: AppColors.primaryColor,
                    ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 0.5.h,
                    ),
                    SizedBox(
                      width: 41.w,
                      height: 17.h,
                      child: Image(
                        image: NetworkImage(
                            controller.cities.data?[index].image ?? ''),
                        errorBuilder: (ctx, object, trace) => Icon(
                          Icons.error_outline,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      controller.cities.data?[index].title ?? '',
                      style: AppTextStyle.text16W600Black(context),
                    ),
                    SizedBox(
                      height: 2.5.h,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
