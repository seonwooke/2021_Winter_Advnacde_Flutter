import 'package:advanced_flutter/controllers/auth_controller.dart';
import 'package:advanced_flutter/controllers/navigation_controller.dart';
import 'package:get/get.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
    Get.put(NavigationController());
  }
}