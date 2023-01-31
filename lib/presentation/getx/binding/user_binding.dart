import 'package:get/get.dart';
import 'package:incp/presentation/getx/controller/user_controller.dart';

class UserBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<UserController>(UserController());
  }
}
