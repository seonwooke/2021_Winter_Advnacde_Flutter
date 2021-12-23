import 'package:advanced_flutter/bindings/sign_up_binding.dart';
import 'package:advanced_flutter/pages/home_screen.dart';
import 'package:advanced_flutter/pages/login_screen.dart';
import 'package:advanced_flutter/pages/sign_up_screen.dart';
import 'package:advanced_flutter/pages/splash_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen()
    ),
    GetPage(
        name: Routes.LOGIN,
        page: () => LoginScreen()
    ),
    GetPage(
        name: Routes.HOME,
        page: () => HomeScreen()
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: () => SignUpScreen(),
      binding: SignUpBinding()
    )
  ];
}