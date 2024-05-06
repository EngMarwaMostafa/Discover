
import 'package:discover/core/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/app_colors.dart';



class CustomSplashButton extends StatefulWidget {

   const CustomSplashButton({
     super.key, required this.text,required this.onTap,
    });
  final String text;
  final void Function()? onTap;


  @override
  State<CustomSplashButton> createState() => _CustomSplashButtonState();
}

class _CustomSplashButtonState extends State<CustomSplashButton> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 91.w,
        height: 6.h,
        decoration: BoxDecoration(
         color:AppColors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Align(
          alignment: Alignment.center,
            child:
            Text(
              widget.text,
              textAlign: TextAlign.center,
              style:GoogleFonts.cairo( textStyle:AppTextStyle.text18(context).copyWith(fontWeight:FontWeight.w500,color: AppColors.white),)
            )
        ),
      ),
    );
  }
}

