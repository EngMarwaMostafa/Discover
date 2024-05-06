
import 'package:discover/pages/enter_code/binding/enter_code_binding.dart';
import 'package:discover/pages/enter_code/presentation/views/enter_code_view.dart';
import 'package:discover/pages/enter_email/presentation/views/enter_email_view.dart';
import 'package:discover/pages/login/binding/login_binding.dart';
import 'package:discover/pages/login/presentation/views/login_view.dart';
import 'package:discover/pages/new_password/binding/new_password_binding.dart';
import 'package:discover/pages/new_password/presentation/views/new_password_view.dart';
import 'package:discover/pages/on_board/presentation/views/onboard_view.dart';
import 'package:discover/pages/register/presentation/views/register_view.dart';
import 'package:discover/pages/sign/binding/sign_binding.dart';
import 'package:discover/pages/sign/presentation/views/sign_view.dart';
import 'package:discover/pages/splash/binding/splash_binding.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../pages/enter_email/binding/enter_email_binding.dart';
import '../pages/on_board/binding/onBoard_binding.dart';
import '../pages/register/binding/register_binding.dart';
import '../pages/splash/presentation/views/splash_view.dart';
import 'app_routes.dart';

class AppPages {
  static const initial = AppRoutes.splash;

  static final routes = [
    GetPage(
        name: AppRoutes.onBoard,
        page: () =>  const OnBoardView(),
           binding: OnBoardBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.splash,
        page: () =>   const SplashView(),
           binding: SplashBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.sign,
        page: () =>   const SignView(),
           binding: SignBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.login,
        page: () =>   const LoginView(),
           binding: LoginBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.register,
        page: () =>   const RegisterView(),
           binding: RegisterBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.enterEmail,
        page: () =>   const EnterEmailView(),
           binding: EnterEmailBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.enterCode,
        page: () =>   const EnterCodeView(),
           binding: EnterCodeBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.newPassword,
        page: () =>   const NewPasswordView(),
           binding: NewPasswordBinding(),
        transition: Transition.fadeIn),
  ];

}

