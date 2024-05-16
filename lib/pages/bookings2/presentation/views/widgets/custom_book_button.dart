import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/app_colors.dart';
import '../../../../../core/app_text_style.dart';

class CustomBookButton extends StatefulWidget {
  const CustomBookButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final void Function()? onTap;

  @override
  State<CustomBookButton> createState() => _CustomBookButtonState();
}

class _CustomBookButtonState extends State<CustomBookButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 91.w,
        height: 6.h,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Align(
            alignment: Alignment.center,
            child: Text(widget.text,
                textAlign: TextAlign.center,
                style: GoogleFonts.cairo(
                  textStyle: AppTextStyle.text16W500White(context),
                ))),
      ),
    );
  }
}
