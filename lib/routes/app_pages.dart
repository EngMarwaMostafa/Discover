import 'package:discover/pages/account/binding/account_binding.dart';
import 'package:discover/pages/account/presentation/views/account_view.dart';
import 'package:discover/pages/book1/binding/book1_binding.dart';
import 'package:discover/pages/book1/presentation/views/book1_view.dart';
import 'package:discover/pages/completed_bokkings/binding/completed_bookings_binding.dart';
import 'package:discover/pages/enter_code/binding/enter_code_binding.dart';
import 'package:discover/pages/enter_code/presentation/views/enter_code_view.dart';
import 'package:discover/pages/enter_email/presentation/views/enter_email_view.dart';
import 'package:discover/pages/favorite/binding/favorite_binding.dart';
import 'package:discover/pages/favorite/presentation/views/favorite_view.dart';
import 'package:discover/pages/home/binding/home_binding.dart';
import 'package:discover/pages/home/presentation/views/home_view.dart';
import 'package:discover/pages/login/binding/login_binding.dart';
import 'package:discover/pages/login/presentation/views/login_view.dart';
import 'package:discover/pages/main_screen/binding/main_screen_binding.dart';
import 'package:discover/pages/main_screen/presentation/view/main_screen_view.dart';
import 'package:discover/pages/new_password/binding/new_password_binding.dart';
import 'package:discover/pages/new_password/presentation/views/new_password_view.dart';
import 'package:discover/pages/offers/binding/offers_binding.dart';
import 'package:discover/pages/offers/presentation/views/offers_view.dart';
import 'package:discover/pages/on_board/presentation/views/onboard_view.dart';
import 'package:discover/pages/place/binding/place_binding.dart';
import 'package:discover/pages/place/presentation/views/place_view.dart';
import 'package:discover/pages/register/presentation/views/register_view.dart';
import 'package:discover/pages/select_city/binding/select_city_binding.dart';
import 'package:discover/pages/select_city/presentation/views/Select_city_view.dart';
import 'package:discover/pages/sign/binding/sign_binding.dart';
import 'package:discover/pages/sign/presentation/views/sign_view.dart';
import 'package:discover/pages/splash/binding/splash_binding.dart';
import 'package:discover/pages/trips/binding/trips_binding.dart';
import 'package:discover/pages/trips/presentation/views/trips_view.dart';
import 'package:discover/pages/trips_details/binding/trips_details_binding.dart';
import 'package:discover/pages/trips_details/presentation/views/trips_details_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../pages/book2/binding/book2_binding.dart';
import '../pages/book2/presentation/views/book2_view.dart';
import '../pages/book3/binding/book3_binding.dart';
import '../pages/book3/presentation/views/book3_view.dart';
import '../pages/bookings1/binding/bookings1_binding.dart';
import '../pages/bookings1/presentation/views/bookings1_view.dart';
import '../pages/bookings2/binding/bookings2_binding.dart';
import '../pages/bookings2/presentation/views/bookings2_view.dart';
import '../pages/bookings3/binding/bookings3_binding.dart';
import '../pages/bookings3/presentation/views/bookings3_view.dart';
import '../pages/completed_bokkings/presentation/views/completed_bookings_view.dart';
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
        page: () => const OnBoardView(),
        binding: OnBoardBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.splash,
        page: () => const SplashView(),
        binding: SplashBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.sign,
        page: () => const SignView(),
        binding: SignBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.login,
        page: () => LoginView(),
        binding: LoginBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.register,
        page: () => RegisterView(),
        binding: RegisterBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.enterEmail,
        page: () => const EnterEmailView(),
        binding: EnterEmailBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.enterCode,
        page: () => const EnterCodeView(),
        binding: EnterCodeBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.newPassword,
        page: () => const NewPasswordView(),
        binding: NewPasswordBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.main,
        page: () => const MainScreenView(),
        binding: MainScreenBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.favorite,
        page: () => const FavoriteView(),
        binding: FavoritesBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.bookings,
        page: () => const Bookings2View(),
        binding: Bookings2Binding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.trips,
        page: () => const TripsView(),
        binding: TripsBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.account,
        page: () => const AccountView(),
        binding: AccountBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.home,
        page: () =>  HomeView(),
        binding: HomeBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.offers,
        page: () => const OffersView(),
        binding: OffersBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.city,
        page: () => SelectCityView(),
        binding: SelectCityBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.place,
        page: () => const PlaceView(),
        binding: PlaceBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.book1,
        page: () => const Book1View(),
        binding: Book1Binding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.book2,
        page: () => const Book2View(),
        binding: Book2Binding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.book3,
        page: () => const Book3View(),
        binding: Book3Binding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.bookings1,
        page: () => const Bookings1View(),
        binding: Bookings1Binding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.bookings2,
        page: () => const Bookings2View(),
        binding: Bookings2Binding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.bookings3,
        page: () => const Bookings3View(),
        binding: Bookings3Binding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.completed,
        page: () => const CompletedBookingsView(),
        binding: CompletedBookingsBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.tripsDetails,
        page: () => const TripsDetailsView(),
        binding: TripsDetailsBinding(),
        transition: Transition.fadeIn),
  ];
}
