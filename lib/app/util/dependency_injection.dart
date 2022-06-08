import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_example/app/data/providers/user_provider.dart';
import 'package:getx_example/app/data/repositories/user_repository.dart';
import 'package:getx_example/app/util/consts/base.dart';
import 'package:getx_example/app/util/token_injecter.dart';

class DependencyInjection{
  static void init(){
        Get.put<GetStorage>(GetStorage());
    Get.put<Dio>(Dio(BaseOptions(
      baseUrl: baseURL,
    ))).interceptors.addAll([
        DioCacheManager(CacheConfig(
          baseUrl: baseURL,
        )).interceptor,
        PrettyDioLogger(
          requestHeader: false,
          requestBody: false,
          responseBody: true,
          responseHeader: true,
          error: true,
        ),
        TokenInjecter()
      ]);

      Get.put<userProvider>(userProvider());
      Get.put<UserRepository>(UserRepository());
  }


}