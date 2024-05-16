
import 'package:discover/core/image_assets_consts.dart';
import 'package:discover/pages/bookings2/presentation/views/widgets/bookings2_card.dart';
import 'package:discover/pages/bookings2/presentation/views/widgets/custom_book_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/app_strings.dart';
import '../../../../core/app_text_style.dart';



class Bookings2View extends StatelessWidget {
  const Bookings2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Get.back();
          },
          child: const Icon(Icons.arrow_back,
          ),
        ),
        toolbarHeight: 12.h,
        title: Text(
          AppStrings.bookingsTitle,
          style: AppTextStyle.text18W600Black(context),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 5.h,
            child: const Bookings2Card(),
          ),
          SizedBox(
            height: 12.h,
          ),
          Center(child: Image.asset(ImageAssetsConstants.bookingPlus)),
         SizedBox(height: 3.h,),
         Center(child: Text(AppStrings.noNextBookings,style: AppTextStyle.text16W600Primary(context),),),
           Center(child: Text(AppStrings.noTrips,style: AppTextStyle.text12W500Grey(context),),),
         Center(child: Text(AppStrings.appearHere,style: AppTextStyle.text12W500Grey(context),)),
          SizedBox(height: 3.h,),
          CustomBookButton(
            text: AppStrings.bookTrip,
            onTap: () {  },),
        ],
      ),
    );
  }
}

