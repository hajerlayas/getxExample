import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getx_example/app/data/models/user.dart';

class userProvider {
  final _dio = Get.find<Dio>();
  Future<User> getUsers(User user) async {
    try {
      final responce = await _dio.post('/users', data: user.toMap());
      return User.fromMap(responce.data);
    } catch (e) {
      throw e;
    }
  }
}
