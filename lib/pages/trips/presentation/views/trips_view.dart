import 'package:discover/core/image_assets_consts.dart';
import 'package:discover/pages/bookings2/presentation/views/widgets/bookings2_card.dart';
import 'package:discover/pages/bookings2/presentation/views/widgets/custom_book_button.dart';
import 'package:discover/pages/completed_bokkings/presentation/views/widgets/completed_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/app_colors.dart';
import '../../../../core/app_strings.dart';
import '../../../../core/app_text_style.dart';
import '../../../../routes/app_routes.dart';
import '../../../../widgets/details_container.dart';
import '../../../bookings1/presentation/views/widgets/custom_booking1_button.dart';

class TripsView extends StatelessWidget {
  const TripsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back,
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
          child: Padding(
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
                    itemCount: 5,
                    itemBuilder: (context, i) {
                      return const DetailsContainer();
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
    );
  }
}


