import 'package:discover/core/app_text_style.dart';
import 'package:discover/pages/book1/presentation/controller/book1_controller.dart';
import 'package:discover/pages/splash/presentation/views/widgets/custom_skip_button.dart';
import 'package:discover/pages/splash/presentation/views/widgets/custom_splash_button.dart';
import 'package:discover/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/app_strings.dart';
import 'widgets/custom_table_calender.dart';

class Book1View extends GetView<Book1Controller> {
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
          AppStrings.bookTitle,
          style: AppTextStyle.text18W600Black(context),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
          children: [
            Center(
              child:
              SizedBox(height: 56.h, child: const CustomTableCalendar()),
            ),
            SizedBox(
              height: 7.h,
            ),
            CustomSplashButton(
                text: AppStrings.bookOnline,
                onTap: () {
                  Get.toNamed(AppRoutes.book2);
                }),
            SizedBox(
              height: 2.h,
            ),
            CustomSkipButton(
                text: AppStrings.bookOnDelivery,
                onTap: () {
                  Get.toNamed(AppRoutes.book3);
                })
          ],
        ),
      ),
    );
  }
}
