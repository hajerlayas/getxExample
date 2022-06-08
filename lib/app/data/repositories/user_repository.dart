import 'package:get/get.dart';
import 'package:getx_example/app/data/models/user.dart';
import 'package:getx_example/app/data/providers/user_provider.dart';

class UserRepository {
  final _userProv = Get.find<userProvider>();

  Future<User> createAddress(User users) async {
    try {
      final responce = await _userProv.getUsers(users);
      return responce;
    } catch (e) {
      throw e;
    }
  }
}
