import 'package:dio/dio.dart';
import 'package:discover/routes/app_routes.dart';
import 'package:discover/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class RegisterController extends SuperController<dynamic> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();

  final bool _isLoading = false;

  bool get isLoading => _isLoading;

  register() async {
    try {
      final response =
          await ApiService.postData(url: 'api/auth/register', body: {
        'type': '0',
        'email': emailController.text,
        'name': nameController.text,
        'phone': phoneController.text,
        'password': passwordController.text,
        'password_confirmation': passwordConfirmationController.text
      });
      if (response.statusCode == 201) {
        EasyLoading.showProgress(1, status: 'تم الدخول بنجاح');
        await Future.delayed(const Duration(seconds: 1));
        print(response.data);
        Get.toNamed(AppRoutes.login);
      } else {}
    } catch (e) {
      if (e is DioException) {
        showToastMessage(e.response.toString(), Colors.yellow);
        print(e.response?.data);
      }
      rethrow;
    }
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

Future<bool?> showToastMessage(message, color) {
  return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER_RIGHT,
      backgroundColor: color,
      textColor: Colors.red,
      fontSize: 16.0);
}
