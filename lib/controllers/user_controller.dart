import 'package:get/get.dart';
import '../models/user.dart';

class UserController extends GetxController {
  static UserController instance = Get.find();
  User _user = User(id: "", name: "", email: "", password: "", type: "");

  User get user => _user;

  void setUser(String user) {
    _user = User.fromJson(user);
    update();
  }
}
