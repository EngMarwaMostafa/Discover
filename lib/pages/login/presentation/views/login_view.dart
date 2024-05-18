import 'package:discover/core/image_assets_consts.dart';
import 'package:discover/pages/login/presentation/controller/login_controller.dart';
import 'package:discover/pages/splash/presentation/views/widgets/custom_splash_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/app_colors.dart';
import '../../../../core/app_strings.dart';
import '../../../../core/app_text_style.dart';
import '../../../../routes/app_routes.dart';
import '../../../../widgets/custom_password_text_form_field.dart';
import '../../../../widgets/custom_text_form_field.dart';
import '../../../../widgets/reusable_components.dart';

class LoginView extends GetView<LoginController> {
  LoginView({super.key});

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.4.w),
        child: Form(
          key: formKey,
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
                  AppStrings.welcome,
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
                  textEditingController: controller.phoneLoginController,
                  hintText: AppStrings.phone,
                  validate: (value) {
                    if (value.length < 10) {
                      return 'من فضلك أدخل رقم تلفون مناسب';
                    }
                    return null; // Return null for no validation errors
                  },
                ),
                SizedBox(height: 4.h),
                CustomPasswordTextFormField(
                  textEditingController: controller.passwordLoginController,
                  hintText: AppStrings.password,
                  validate: (value) {
                    if (value.length < 6) {
                      return 'لابد أن تكون كلمة المرور على الأقل 6 أرقام';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 4.h),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.enterEmail);
                    },
                    child: Text(
                      AppStrings.forgetPassword,
                      style: AppTextStyle.bodyM.copyWith(
                          fontSize: 14.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                controller.obx(
                  (state) => CustomSplashButton(
                      text: AppStrings.enterText,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          controller.login();
                        }
                      }),
                ),
                SizedBox(height: 9.h),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.register);
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: AppStrings.doNotHaveAcc,
                            style: AppTextStyle.bodyM.copyWith(
                              color: AppColors.blackColor,
                              fontSize: 14.sp,
                            ),
                          ),
                          TextSpan(
                            text: " ${AppStrings.createAcc}",
                            style: AppTextStyle.bodyM.copyWith(fontSize: 14.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 4.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
