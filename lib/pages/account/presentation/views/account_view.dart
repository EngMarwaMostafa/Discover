import 'package:discover/core/app_colors.dart';
import 'package:discover/pages/account/presentation/views/widgets/email_alert.dart';
import 'package:discover/pages/account/presentation/views/widgets/exit_alert.dart';
import 'package:discover/pages/account/presentation/views/widgets/image_alert.dart';
import 'package:discover/pages/account/presentation/views/widgets/language_alert.dart';
import 'package:discover/pages/account/presentation/views/widgets/password_alert.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/app_strings.dart';
import '../../../../core/app_text_style.dart';
import '../../../../core/image_assets_consts.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  late final SharedPreferences prefs;

  Future<void> getData() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    super.initState();
    getData().then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
          toolbarHeight: 12.h,
          title: Text(
            AppStrings.account,
            style: AppTextStyle.text18W600Black(context),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Center(
              child: SizedBox(
                width: 29.w,
                height: 13.h,
                child: CircleAvatar(
                  backgroundColor: AppColors.grayColor,
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Center(
              child: Text(prefs.getString('name') ?? '',
                  style: AppTextStyle.text15W700(context)),
            ),
            SizedBox(
              height: 1.h,
            ),
            Center(
                child: Text(
              prefs.getString('email') ?? '',
              style: AppTextStyle.text10W400Gry(context),
            )),
            SizedBox(
              height: 10.h,
              child: Stack(
                children: [
                  RotationTransition(
                    turns: AlwaysStoppedAnimation(350),
                    child: Positioned(
                      top: 30.7,
                      left: -155,
                      child: Image.asset('assets/images/stack2.png'),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 148,
                    child: Image.asset('assets/images/stack2.png'),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                passwordAlert(context);
              },
              child: ListTile(
                leading: Image.asset(
                  ImageAssetsConstants.lockIcon,
                  scale: 2,
                ),
                horizontalTitleGap: 1.w,
                title: Text(
                  AppStrings.changePassword,
                  style: AppTextStyle.text14W500Black(context),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                emailAlert(context);
              },
              child: ListTile(
                leading: Image.asset(ImageAssetsConstants.envo, scale: 2),
                horizontalTitleGap: 1.w,
                title: Text(
                  AppStrings.changeEmail,
                  style: AppTextStyle.text14W500Black(context),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                imageAlert(context);
              },
              child: ListTile(
                leading: Image.asset(ImageAssetsConstants.cam, scale: 2),
                horizontalTitleGap: 1.w,
                title: Text(
                  AppStrings.changePhoto,
                  style: AppTextStyle.text14W500Black(context),
                ),
              ),
            ),
            ListTile(
              leading: Image.asset(
                ImageAssetsConstants.userIcon,
                scale: 2,
              ),
              horizontalTitleGap: 1.w,
              title: Text(
                AppStrings.changeName,
                style: AppTextStyle.text14W500Black(context),
              ),
            ),
            InkWell(
              onTap: () {
                languageAlert(context);
              },
              child: ListTile(
                leading: Image.asset(
                  ImageAssetsConstants.lang,
                  scale: 2,
                ),
                horizontalTitleGap: 1.w,
                title: Text(
                  AppStrings.changeLang,
                  style: AppTextStyle.text14W500Black(context),
                ),
              ),
            ),
            // SizedBox(
            //   height: 2.h,
            // ),
            InkWell(
              onTap: () {
                exitAlert(context);
              },
              child: ListTile(
                leading: Image.asset(
                  ImageAssetsConstants.out,
                  scale: 2,
                ),
                horizontalTitleGap: 1.w,
                title: Text(
                  AppStrings.logOut,
                  style: AppTextStyle.text14W500Black(context),
                ),
              ),
            ),
          ],
        ));
  }
}
