
import 'package:discover/core/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/app_colors.dart';



class CustomBooking1Button extends StatefulWidget {

   const CustomBooking1Button({
     super.key, required this.text,required this.onTap,
    });
  final String text;
  final void Function()? onTap;


  @override
  State<CustomBooking1Button> createState() => _CustomBooking1ButtonState();
}

class _CustomBooking1ButtonState extends State<CustomBooking1Button> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 52.w,
        height: 4.h,
        decoration: BoxDecoration(
         color:AppColors.primaryColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Align(
          alignment: Alignment.center,
            child:
            Text(
              widget.text,
              textAlign: TextAlign.center,
              style:AppTextStyle.text10W500White(context)
            )
        ),
      ),
    );
  }
}

