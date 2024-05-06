import 'package:discover/core/app_colors.dart';
import 'package:discover/pages/on_board/presentation/views/widgets/page_one.dart';
import 'package:discover/pages/on_board/presentation/views/widgets/page_three.dart';
import 'package:discover/pages/on_board/presentation/views/widgets/page_two.dart';
import 'package:discover/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../core/app_strings.dart';
import '../../../splash/presentation/views/widgets/custom_skip_button.dart';
import '../../../splash/presentation/views/widgets/custom_splash_button.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({super.key});

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {
  final PageController _pageController = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: 100.h,
      child: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index ==2);
              });
            },
            children: [
              const PageOne(),
              PageTwo(),
              const PageThree(),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Positioned(
            bottom: 20.h,
            left: 5.w,
            child:
            onLastPage?
            CustomSplashButton(
                text: AppStrings.doneText,
                onTap: () {
                Get.toNamed(AppRoutes.sign);
                }).animate().effect(curve: Curves.easeOut, duration: 300.ms)
                :
            CustomSplashButton(
                text: AppStrings.nextText,
                onTap: () {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                }).animate().effect(curve: Curves.easeOut, duration: 300.ms)
          ),
          Positioned(
            bottom: 12.h,
            left: 5.w,
            child: CustomSkipButton(
                text: AppStrings.skipText,
                onTap: () {
                  Get.toNamed(AppRoutes.sign);
                }).animate().effect(curve: Curves.easeOut, duration: 300.ms),
          ),
          Positioned(
            bottom: 8.h,
            left: 60.w,
            right: 50.w,
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: ExpandingDotsEffect(
                dotColor: AppColors.blue,
                activeDotColor: AppColors.blue,
                paintStyle: PaintingStyle.fill,
                strokeWidth: 7.w,
                dotWidth: 7.3,
                dotHeight: 1.h,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
