import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';
import '../../../../../core/app_colors.dart';
import '../../../../../core/app_strings.dart';
import '../../../../../core/app_text_style.dart';
import '../../../../../core/image_assets_consts.dart';

class PlaceRow extends StatelessWidget {
  const PlaceRow({super.key});

  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(ImageAssetsConstants.location,color: AppColors.greyColor,scale: 2.5,),
        SizedBox(width: 1.w,),
        Text(AppStrings.matrouh,style: AppTextStyle.text10W400Gray(context),),
      ],
    );
  }
}
