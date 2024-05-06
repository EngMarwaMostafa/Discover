
import 'package:discover/core/image_assets_consts.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 3.h,),
        Row(
         //       mainAxisAlignment: MainAxisAlignment.start,
        children: [
        SizedBox(
            width: 11.w,
            height: 5.h,
            child: Image.asset(ImageAssetsConstants.user)),
       //   SizedBox(width: 40.w,),
          Column(
            children: [

            ],
          ),
          SizedBox(
              height: 3.h,
              width:5.w ,
              child: Image.asset(ImageAssetsConstants.location)),
          SizedBox(width: 5.w,),
          SizedBox(
              width: 7.w,
              height: 3.h,
              child: Image.asset(ImageAssetsConstants.notifications)),

        ],
        )
        ],
      ),
    );
  }
}
