import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/app_colors.dart';
import '../../../../../core/app_text_style.dart';

class CustomCancelButton extends StatefulWidget {
  const CustomCancelButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final void Function()? onTap;

  @override
  State<CustomCancelButton> createState() => _CustomCancelButtonState();
}

class _CustomCancelButtonState extends State<CustomCancelButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 26.w,
        height: 5.h,
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(color:AppColors.primaryColor),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Align(
            alignment: Alignment.center,
            child: Text(widget.text,
                textAlign: TextAlign.center,
                style: AppTextStyle.text12W500Blue(context)
            )),
      ),
    );
  }
}
