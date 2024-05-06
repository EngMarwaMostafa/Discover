import 'dart:ui';

import 'package:discover/core/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/app_colors.dart';

class CustomFormFieldCode extends StatelessWidget {
  const CustomFormFieldCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16.w,
      height: 7.3.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.greyColor, width: 0.3.w),
      ),
      child: TextFormField(
        style: AppTextStyle.bodyM.copyWith(fontSize: 24.sp),
        keyboardType:
        const TextInputType.numberWithOptions(decimal: true, signed: false),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          ArabicNumberFormatter(),
        ],
        textAlign: TextAlign.center,
        cursorColor: AppColors.primaryColor,
        decoration: const InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class ArabicNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Convert Latin numbers to Arabic numbers
    String newText = newValue.text.replaceAllMapped(
      RegExp(r'[0-9]'),
          (Match match) =>
          String.fromCharCode(match.group(0)!.codeUnitAt(0) + 1584),
    );
    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}