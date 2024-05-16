import 'package:discover/core/app_strings.dart';
import 'package:discover/core/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../core/app_colors.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 91.w,
      height: 10.h,
   //   padding: const EdgeInsets.all(15),
      child: TextField(
        decoration: InputDecoration(
          isDense: true,
        //  contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
          hintText: AppStrings.search,
          hintStyle: AppTextStyle.text14W500Grey(context),
          prefixIcon: Icon(
            Icons.search,
            size: 26,
            color: AppColors.greyColor,
          ),
          /* -- Border Styling -- */
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              width: 2.0,
              color: AppColors.greyColor,
            ), // BorderSide
          ),
          // OutlineInputBorder
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              width: 2.0,
              color: AppColors.greyColor,
            ), // BorderSide
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
                width: 2.0, color: AppColors.greyColor), // BorderSide
          ), // OutlineInputBorder
        ), // InputDecoration
      ),
    );
  }
}

