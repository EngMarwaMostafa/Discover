import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:discover/pages/main_screen/presentation/controller/main_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app_colors.dart';
import '../../../../core/image_assets_consts.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({super.key});

  @override
  State<MainScreenView> createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<MainScreenView> {
  final MainScreenController controller = Get.put(MainScreenController());

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        body: controller.tabs[controller.currentIndex.value],
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          items: const [
            CurvedNavigationBarItem(
              child: ImageIcon(
                AssetImage(ImageAssetsConstants.home),
              ),
              label: 'الرئيسية',
            ),
            CurvedNavigationBarItem(
              child: ImageIcon(
                AssetImage(ImageAssetsConstants.trips),
              ),
              label: 'الرحلات',
            ),
            CurvedNavigationBarItem(
              child: ImageIcon(
                AssetImage(ImageAssetsConstants.favorite),
              ),
              label: 'المفضلة',
            ),
            CurvedNavigationBarItem(
              child: ImageIcon(
                AssetImage(ImageAssetsConstants.book),
              ),
              label: 'الحجوزات',
            ),

            CurvedNavigationBarItem(
              child: ImageIcon(
                AssetImage(ImageAssetsConstants.userBottom),
              ),
              label: 'حسابي',
            ),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: AppColors.primaryColor,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              controller.currentIndex.value = index;
            });
          },
          letIndexChange: (index) => true,
          // bottomNavigationBar: Container(
          //   height: 10.h,
          //   decoration: BoxDecoration(
          //     border: Border.all(color: AppColors.primaryColor),
          //     boxShadow: const [
          //       BoxShadow(
          //         offset: Offset(0,-6),
          //         blurRadius: 16,
          //         spreadRadius: 0,
          //         color: AppColors.primaryColor
          //       ),
          //     ],
          //   ),
          //   child: BottomNavigationBar(
          //     currentIndex: controller.currentIndex.value,
          //     onTap: (int index) {
          //       controller.currentIndex.value = index;
          //     },
          //     items: const [
          //       BottomNavigationBarItem(
          //         icon: ImageIcon(
          //           AssetImage(
          //              ImageAssetsConstants.home),),
          //         label: 'الرئيسية',
          //       ),
          //       BottomNavigationBarItem(
          //         icon: ImageIcon(
          //           AssetImage(
          //              ImageAssetsConstants.book),),
          //         label: 'الحجوزات',
          //       ),
          //       BottomNavigationBarItem(
          //         icon: ImageIcon(
          //           AssetImage(
          //              ImageAssetsConstants.trips),),
          //         label: 'الرحلات',
          //       ),
          //       BottomNavigationBarItem(
          //         icon: ImageIcon(
          //           AssetImage(
          //              ImageAssetsConstants.favorite),),
          //         label: 'المفضلة',
          //       ),
          //       BottomNavigationBarItem(
          //         icon: ImageIcon(
          //           AssetImage(
          //              ImageAssetsConstants.userBottom),),
          //         label: 'حسابي',
          //       ),
          //     ],
          //     showUnselectedLabels: true,
          //     selectedItemColor: AppColors.primaryColor,
          //     unselectedItemColor: AppColors.greyColor,
          //     selectedFontSize: 16,
          //   ),
          // ),
        )));
  }
}
