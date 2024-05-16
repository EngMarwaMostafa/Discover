
import 'package:discover/core/app_strings.dart';
import 'package:discover/core/app_text_style.dart';
import 'package:discover/pages/home/presentation/views/widgets/card.dart';
import 'package:discover/pages/offers/presentation/controller/offers_controller.dart';
import 'package:discover/pages/offers/presentation/views/widgets/offers_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class OffersView extends GetView<OffersController> {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 12.h,
        title: Text(
          AppStrings.offers,
          style: AppTextStyle.text18W600Black(context),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_forward))
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 5.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 7,
              itemBuilder: (context, i) {
                return const OffersCard();
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 1.w,
                );
              },
            ),
          ),
          SizedBox(
            height: 75.h,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // number of items in each row
                  // mainAxisSpacing: 5, // spacing between rows
                  // crossAxisSpacing: 5, // spacing between columns
                ),
                itemCount:controller.offersList.length,
                itemBuilder: (BuildContext context, int index) {
                  return MyCard(
                    title: controller.offersList[index].data?.first.service?.title,
                    image: controller.offersList[index].data?.first.service?.image,
                    price: controller.offersList[index].data?.first.service?.price,
                    unPrice:controller.offersList[index].data?.first.service?.unPrice,);
                }),
          )
        ],
      ),
    );
  }
}
