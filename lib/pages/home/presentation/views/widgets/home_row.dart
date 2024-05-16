
import 'package:flutter/material.dart';
import '../../../../../core/app_colors.dart';
import '../../../../../core/app_strings.dart';
import '../../../../../core/app_text_style.dart';
import '../../../../../core/image_assets_consts.dart';

class HomeRow extends StatelessWidget {
  const HomeRow({super.key, this.title});
  final String? title;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title!,style: AppTextStyle.text14W500Black(context),),
        Icon(Icons.favorite,color: AppColors.redColor,),
        Image.asset(ImageAssetsConstants.share,scale: 2,)
      ],
    );
  }
}
