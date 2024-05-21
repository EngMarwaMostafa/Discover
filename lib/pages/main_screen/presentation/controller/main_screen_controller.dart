import 'package:discover/pages/account/presentation/views/account_view.dart';
import 'package:discover/pages/favorite/presentation/views/favorite_view.dart';
import 'package:discover/pages/trips/presentation/views/trips_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../bookings1/presentation/views/bookings1_view.dart';
import '../../../home/presentation/views/home_view.dart';

class MainScreenController extends SuperController<dynamic> {
  RxInt currentIndex = 0.obs;

  final List<Widget> tabs = [
    HomeView(),
    const TripsView(),
    const FavoriteView(),
    Bookings1View(),
    const AccountView(),
  ];

  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onHidden() {
    // TODO: implement onHidden
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }
}
