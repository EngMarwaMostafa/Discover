import 'package:discover/core/app_strings.dart';
import 'package:discover/core/user_service.dart';
import 'package:discover/pages/splash/presentation/views/widgets/custom_splash_button.dart';
import 'package:discover/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContinueAsView extends StatelessWidget {
  const ContinueAsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomSplashButton(
              text: AppStrings.continueAsUser,
              onTap: () {
                UserService.to.userType = '0';
                Get.toNamed(AppRoutes.sign);
              },
            ),
            CustomSplashButton(
              text: AppStrings.continueAsMediator,
              onTap: () {
                UserService.to.userType = '1';
                Get.toNamed(AppRoutes.sign);
              },
            ),
            CustomSplashButton(
              text: AppStrings.continueAsOwner,
              onTap: () {
                UserService.to.userType = '2';
                Get.toNamed(AppRoutes.sign);
              },
            ),
          ],
        ),
      ),
    );
  }
}
