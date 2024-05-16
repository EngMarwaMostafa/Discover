import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/app_colors.dart';

class PlaceContainer extends StatelessWidget {
  const PlaceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25.w,
      height: 9.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.grayColor),
    );
  }
}
