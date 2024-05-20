import 'package:discover/core/app_strings.dart';
import 'package:discover/core/app_text_style.dart';
import 'package:discover/pages/conitnue/presentation/views/widgets/custom_card.dart';
import 'package:discover/pages/splash/presentation/views/widgets/custom_splash_button.dart';
import 'package:discover/routes/app_routes.dart';
import 'package:flutter/material.dart';
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
            iconButton: IconButton(
              onPressed: () {},
              icon: Image.asset('assets/icons/userCa.png'),
            ),
            title: AppStrings.continueAsOwner,
          ),
          CustomCard(
            iconButton: IconButton(
              onPressed: () {},
              icon: Image.asset('assets/icons/mediator.png'),
            ),
            title: AppStrings.continueAsMediator,
          ),
          CustomCard(
            iconButton: IconButton(
              onPressed: () {},
              icon: Image.asset('assets/icons/mediator.png'),
            ),
            title: AppStrings.continueAsMediator,
          ),

        ],
      ),
    );
  }
}


