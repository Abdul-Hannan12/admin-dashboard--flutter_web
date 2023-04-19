import 'package:get/get.dart';
import '../models/user.dart';

class UserController extends GetxController {
  static UserController instance = Get.find();
  final _user = User(id: "", name: "", email: "", password: "", type: "").obs;

  User get user => _user.value;

  void setUser(String user) {
    _user.value = User.fromJson(user);
    update();
  }

  void clearUser() {
    _user.value = User(id: "", name: "", email: "", password: "", type: "");
    update();
  }
}
