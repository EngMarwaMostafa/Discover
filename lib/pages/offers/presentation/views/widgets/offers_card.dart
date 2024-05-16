import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';
import '../../../../../core/app_colors.dart';
import '../../../../../core/app_strings.dart';
import '../../../../../core/app_text_style.dart';

class OffersCard extends StatelessWidget {
  const OffersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22.w,
      height: 5.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          color: AppColors.white
      ),
      //  color: Colors.blue,
      child: Center(child: Text(AppStrings.hotel,style: AppTextStyle.text16W600Blue(context))),
    );
  }
}