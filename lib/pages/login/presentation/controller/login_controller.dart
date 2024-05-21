import 'package:dio/dio.dart';
import 'package:discover/core/user_service.dart';
import 'package:discover/models/login_model.dart';
import 'package:discover/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../routes/app_routes.dart';
import '../../../register/presentation/controller/register_controller.dart';

class LoginController extends SuperController<dynamic> {
  TextEditingController phoneLoginController = TextEditingController();
  TextEditingController passwordLoginController = TextEditingController();

  final dio = Dio();
  final bool _isLoading = false;
  bool get isLoading => _isLoading;
  GetStorage box = GetStorage('userData');
  login() async {
    change(false, status: RxStatus.loading());
    final prefs = await SharedPreferences.getInstance();
    print({
      "phone": phoneLoginController.text,
      'password': passwordLoginController.text,
    });
    try {
      final response =
          await ApiService.postData(url: 'api/authUser/login', body: {
        "type": UserService.to.userType,
        "phone": phoneLoginController.text,
        'password': passwordLoginController.text,
      });
      print(response.statusCode);
      if (response.statusCode == 200) {
        print(response.data);
        LoginModel loginModel = LoginModel.fromJson(response.data);
        box.write('token', loginModel.accessToken);
        box.write('type', UserService.to.userType);
        print(loginModel.accessToken);
        UserService.to.accessToken = loginModel.accessToken;
        prefs.setString('token', loginModel.accessToken.toString());
        prefs.setString('name', loginModel.admin!.name!);
        prefs.setString('email', loginModel.admin!.email!);
        prefs.setString('phone', loginModel.admin!.phone!);
        change(false, status: RxStatus.success());

        Get.offAllNamed(AppRoutes.city);
      } else {}
    } catch (e) {
      if (e is DioException) {
        print(e.response?.statusCode);
        showToastMessage(e.response.toString(), Colors.transparent);
        print(e.response?.data);
      }
      change(false, status: RxStatus.success());
      rethrow;
    }
  }

  @override
  void onInit() {
    change(false, status: RxStatus.success());
    super.onInit();
  }

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
