import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:discover/core/user_service.dart';
import 'package:get/get.dart' hide Response;
import 'package:shared_preferences/shared_preferences.dart';

class ApiService extends GetxService {
  static late Dio dio;

  static init() async {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://gomaacompany.com/travel/public/',
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        sendTimeout: const Duration(seconds: 60),
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData(
      {required String url, Map<String, dynamic>? query, dynamic body}) async {
    dio.options.headers = {
      "Accept": 'application/json',
      'Content-Type': 'application/json',
      "Authorization": "Bearer ${UserService.to.accessToken}"
    };
    print(UserService.to.accessToken);
    return await dio.get((url), queryParameters: query, data: body);
  }

  static Future<Response> postData(
      {required String url, Map<String, dynamic>? query, dynamic body}) async {
    print(url);
    dio.options.headers = {
      'Accept': 'application/json',
      'Content-Type': "application/json",
      "Authorization": "Bearer ${UserService.to.accessToken}"
    };

    Response response = await dio.post(url, queryParameters: query, data: body);

    return response;
  }

  static Future<Response> putData(
      {required String url, Map<String, dynamic>? query, dynamic data}) async {
    dio.options.headers = {'Authorization': "Bearer "};

    Response response = await dio.put(url, queryParameters: query, data: data);

    return response;
  }

  static Future<Response> deleteData(
      {required String url, Map<String, dynamic>? query, dynamic data}) async {
    dio.options.headers = {'Authorization': "Bearer "};

    Response response =
        await dio.delete(url, queryParameters: query, data: data);

    return response;
  }

  @override
  void onInit() async {
    init();

    super.onInit();
  }
}
