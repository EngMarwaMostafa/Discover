import 'package:discover/core/app_strings.dart';

import 'package:discover/core/user_service.dart';

import 'package:discover/core/app_text_style.dart';
import 'package:discover/pages/conitnue/presentation/views/widgets/custom_card.dart';

import 'package:discover/pages/splash/presentation/views/widgets/custom_splash_button.dart';
import 'package:discover/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ContinueAsView extends StatelessWidget {
  const ContinueAsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomCard(

            onTap: () {
              UserService.to.userType = '0';
              Get.toNamed(AppRoutes.sign);
            },
            icon: const ImageIcon(
              AssetImage('assets/icons/userCa.png'),
            ),
            title: AppStrings.continueAsUser,
          ),
          CustomCard(
            onTap: () {
              UserService.to.userType = '1';
              Get.toNamed(AppRoutes.sign);
            },
            icon: const ImageIcon(
              AssetImage('assets/icons/icons8-mediator-64.png'),
            ),
            title: AppStrings.continueAsMediator,
          ),
          CustomCard(
            onTap: () {
              UserService.to.userType = '2';
              Get.toNamed(AppRoutes.sign);
            },
            icon: const ImageIcon(
              AssetImage('aassets/icons/icons8-owner-64.png'),
            ),
            title: AppStrings.continueAsOwner,
          ),

        ],
      ),
    );
  }
}
