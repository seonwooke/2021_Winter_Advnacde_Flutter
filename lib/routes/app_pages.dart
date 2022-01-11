import 'package:advanced_flutter/bindings/binding.dart';
import 'package:advanced_flutter/pages/bottom_navigation_screen.dart';
import 'package:advanced_flutter/pages/home_screen.dart';
import 'package:advanced_flutter/pages/interest_test_screen.dart';
import 'package:advanced_flutter/pages/login_screen.dart';
import 'package:advanced_flutter/pages/my_page_screen.dart';
import 'package:advanced_flutter/pages/sign_up_screen.dart';
import 'package:advanced_flutter/pages/splash_screen.dart';
import 'package:advanced_flutter/pages/starting_screen.dart';
import 'package:advanced_flutter/pages/user_info_screen.dart';
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
      name: Routes.MYPAGE,
      page: () => MyPageScreen()
    ),
    GetPage(
      name: Routes.NAVIGATION,
      page: () => BottomNavigationScreen()
    ),
    GetPage(
      name: Routes.STARTING,
      page: () => StartingScreen()
    ),
    GetPage(
      name : Routes.USERINFO,
      page: () => UserInfoScreen()
    ),
    GetPage(
        name : Routes.INTERESTTEST,
        page: () => InterestTestScreen()
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: () => SignUpScreen(),
      binding: SignUpBinding()
    )
  ];
}