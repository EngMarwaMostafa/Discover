import 'package:discover/core/app_text_style.dart';
import 'package:discover/core/image_assets_consts.dart';
import 'package:discover/pages/register/presentation/controller/register_controller.dart';
import 'package:discover/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/app_colors.dart';
import '../../../../core/app_strings.dart';
import '../../../../widgets/custom_password_text_form_field.dart';
import '../../../../widgets/custom_text_form_field.dart';
import '../../../splash/presentation/views/widgets/custom_splash_button.dart';

class RegisterView extends GetView<RegisterController> {
  RegisterView({super.key});

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.4.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.h),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    ImageAssetsConstants.logo,
                    width: 27.w,
                    height: 9.h,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  AppStrings.letsStart,
                  style: AppTextStyle.bodyM,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: AppStrings.welcomeInApp,
                        style: AppTextStyle.bodyM.copyWith(
                          color: AppColors.blackColor,
                          fontSize: 14.sp,
                        ),
                      ),
                      TextSpan(
                        text: " ${AppStrings.ektashf}",
                        style: AppTextStyle.bodyM.copyWith(fontSize: 17.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                CustomTextFormField(
                  textEditingController: controller.nameController,
                  hintText: AppStrings.name,
                    validate: (value) {
                      if (value.isEmpty) {
                        return 'من فضلك أدخل اسمك';
                      }
                      return null;
                    },

                ),

                SizedBox(height: 3.h),
                CustomTextFormField(
                  textEditingController: controller.emailController,
                  hintText: AppStrings.email,
                  validate: (value) {
                    if (value.isEmpty || !value.contains('@')) {
                      return 'من فضلك أدخل بريد إلكترونى مناسب';
                    }
                    return null;
                  },

                ),
                SizedBox(height: 3.h),

                CustomTextFormField(
                  textEditingController: controller.phoneController,
                  hintText: AppStrings.phone,
                    validate: (value) {
                      if (value.length < 11) {
                        return 'من فضلك أدخل رقم تلفون مناسب';
                      }
                      return null; // Return null for no validation errors
                    },
                ),
                SizedBox(height: 3.h),
                CustomPasswordTextFormField(
                  textEditingController: controller.passwordController,
                  hintText: AppStrings.password,
                  validate: (value) {
                    if (value.length < 6) {
                      return 'لابد أن تكون كلمة المرور على الأقل 6 أرقام';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 3.h),
                CustomPasswordTextFormField(
                  textEditingController: controller.passwordConfirmationController,
                  hintText: AppStrings.passwordConfirmation,
                  validate: (value) {
                    if (value != controller.passwordController.text) {
                      return 'لابد أن تتوافق كلمة المرور مع تأكيد كلمة المرور ';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 3.h),
                CustomSplashButton(
                    text: AppStrings.create,
                    onTap: () async {
                      if (formKey.currentState!.validate()) {
                        controller.register();
                        EasyLoading.showProgress(0.3, status: 'جارى إنشاء حساب');
                        await Future.delayed(const Duration(seconds: 2));
                        EasyLoading.dismiss();
                      }
                    }),
                SizedBox(height: 5.h),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.login);
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: AppStrings.haveAcc,
                            style: AppTextStyle.bodyM.copyWith(
                              color: AppColors.blackColor,
                              fontSize: 14.sp,
                            ),
                          ),
                          TextSpan(
                            text: " ${AppStrings.login}",
                            style: AppTextStyle.bodyM.copyWith(fontSize: 14.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
