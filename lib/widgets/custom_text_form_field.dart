
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:sizer/sizer.dart';
import '../core/app_colors.dart';
import '../core/app_text_style.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  Function(String value)? validate;
  Function? onDispose;
  //bool isObsecure;
  bool maxLines;
  final TextInputAction? textInputAction ;
  IconButton? suffixIcon;

  CustomTextFormField({
    super.key,
    this.suffixIcon,
    required this.textEditingController,
    required this.hintText,
   // this.isObsecure = false,
    this.maxLines = false,
    this.onDispose,
    required this.validate,
    this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: SizedBox(
        width: 91.w,
    //  height: 5.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
                validator: (value) => validate!(value!),
                textAlign: TextAlign.right,
                keyboardType: TextInputType.text,
                maxLines: maxLines ? 3 : 1,
                controller: textEditingController,
                textInputAction: textInputAction,
                decoration: InputDecoration(
                  suffixIcon:suffixIcon,
                  errorStyle: const TextStyle(color:Colors.purple),
                  filled: true,
                  fillColor: AppColors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.greyColor, width: 1),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.grey),),
                  focusedErrorBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.grey, width: 1),
                  ),
                  focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.grey, width: 1),
                  ),
                  hintText:hintText,
                 hintStyle: AppTextStyle.bodyM.copyWith(
                color: AppColors.greyColor,
                  fontSize: 14.sp,
                ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
