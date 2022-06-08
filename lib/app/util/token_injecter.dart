
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as getx;
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get_storage/get_storage.dart';

class TokenInjecter extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (Get.find<GetStorage>().hasData('Token')) {
      options.headers["Authorization"] =
          "Bearer " + Get.find<GetStorage>().read('Token');
    }
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    super.onError(err, handler);
  }

  @override
  Future<void> onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    if (response.data is Map<String, dynamic>) {
      Map<String, dynamic> data = response.data;
      if (data.containsKey('id_token')) {}
    }
    super.onResponse(response, handler);
  }
}
