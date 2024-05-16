import 'package:dio/dio.dart';
import 'package:discover/models/login_model.dart';
import 'package:discover/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../routes/app_routes.dart';
import '../../../register/presentation/controller/register_controller.dart';

class LoginController extends SuperController<dynamic>{
  TextEditingController phoneLoginController = TextEditingController();
  TextEditingController passwordLoginController = TextEditingController();

  final dio=Dio();
  final bool _isLoading = false;
  bool get isLoading=>_isLoading;

  login() async {
    final prefs = await SharedPreferences.getInstance();
    try{
      final response=await ApiService.postData(
          url:'api/auth/login',
          body: {
            "phone":phoneLoginController.text,
            'password':passwordLoginController.text,
          });
    if(response.statusCode==200){
      print(response.data);
      LoginModel loginModel=LoginModel.fromJson(response.data);
      prefs.setString('token', loginModel.accessToken.toString());
      prefs.setString('name', loginModel.admin!.name!);
      prefs.setString('email', loginModel.admin!.email!);
      prefs.setString('phone', loginModel.admin!.phone!);
      Get.offNamed(AppRoutes.main);
    } else {}
    }catch(e){
      if (e is DioException) {
        showToastMessage(e.response.toString(),Colors.transparent);
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