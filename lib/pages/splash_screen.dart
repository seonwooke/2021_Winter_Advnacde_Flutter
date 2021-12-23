import 'package:advanced_flutter/controllers/auth_controller.dart';
import 'package:advanced_flutter/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  final authController = Get.find<AuthController>();

  @override
  void initState() {
    super.initState();
    (authController.firebaseUser == null) ? _goToLogin() : _goToHome();
  }

  @override
  Widget build(BuildContext context) {
    return splash();
  }
  
  Future<void> _goToLogin() async {
    await Future.delayed(Duration(seconds: 3));
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Get.offAllNamed(Routes.LOGIN);
    }); // Splash이 완성 되었을 때 액션
  }

  Future<void> _goToHome() async {
    await Future.delayed(Duration(seconds: 3));
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Get.offAllNamed(Routes.HOME);
    }); // Splash이 완성 되었을 때 액션
  }

  Widget splash() {
    return Scaffold(
      body: Center(
        child: Shimmer.fromColors(
          baseColor: Colors.grey,
          highlightColor: Colors.white,
          child: Text(
            'SPLASH SCREEN',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
