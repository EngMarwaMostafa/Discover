import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:sizer/sizer.dart';

import '../core/app_colors.dart';
import '../core/app_text_style.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  final TextEditingController textEditingController;
  final String? hintText;
  Function(String value)? validate;
  Function? onDispose;
  Function? obsecure;
  bool maxLines;
  final TextInputAction? textInputAction;

  IconButton? suffixIcon;

  CustomPasswordTextFormField({
    super.key,
    this.suffixIcon,
    required this.textEditingController,
    this.hintText,
    this.obsecure,
    this.maxLines = false,
    this.onDispose,
    required this.validate,
    this.textInputAction,
  });

  @override
  State<CustomPasswordTextFormField> createState() =>
      _CustomPasswordTextFormFieldState();
}

class _CustomPasswordTextFormFieldState
    extends State<CustomPasswordTextFormField> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: SizedBox(
        width: 90.w,
        // height: displayHeight(context) * 0.07,
        child: TextFormField(
          validator: (value) => widget.validate!(value!),
          textAlign: TextAlign.start,
          keyboardType: TextInputType.text,
          maxLines: widget.maxLines ? 3 : 1,
          controller: widget.textEditingController,
          textInputAction: widget.textInputAction,
          obscureText: passwordVisible,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(passwordVisible
                  ? Icons.visibility_off
                  : Icons.visibility),
              onPressed: () {
                setState(
                  () {
                    passwordVisible = !passwordVisible;
                  },
                );
              },
              color: Colors.black,
            ),
            errorStyle: const TextStyle(color: Colors.purple),
            filled: true,
            fillColor: AppColors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.greyColor, width: 1),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.grey),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.grey, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.grey, width: 1),
            ),
            hintText: widget.hintText,
            hintStyle: AppTextStyle.bodyM.copyWith(
              color: AppColors.greyColor,
              fontSize: 14.sp,
            ),
          ),
        ),
      ),
    );
  }
}
