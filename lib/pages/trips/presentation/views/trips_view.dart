import 'package:discover/pages/trips/presentation/controller/trips_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/app_text_style.dart';

import '../../../../widgets/details_container.dart';

class TripsView extends GetView<TripsController> {
  const TripsView({super.key});

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
          AppStrings.journey,
          style: AppTextStyle.text18W600Black(context),
        ),
        centerTitle: true,
      ),
      body: Expanded(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: controller.obx(
            (state) => Padding(
              padding: EdgeInsets.only(left: 3.w, right: 3.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.availableOffers,
                    style: AppTextStyle.text16W600Black(context),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  SizedBox(
                    height: 80.h,
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: controller.trips.data?.length ?? 0,
                      itemBuilder: (context, i) {
                        return DetailsContainer(
                          title: controller.trips.data?[i].title ?? '',
                          image: controller.trips.data?[i].image ?? '',
                          price: controller.trips.data?[i].price ?? '',
                          location:
                              controller.trips.data?[i].country?.title ?? '',
                          date: controller.trips.data?[i].title ?? '',
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 2.h,
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
