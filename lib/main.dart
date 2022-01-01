import 'package:advanced_flutter/controllers/auth_controller.dart';
import 'package:advanced_flutter/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'controllers/navigation_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // 공부하기
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final navigationController = Get.put(NavigationController());
  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 800),
      builder: () => GetMaterialApp(
        title: 'PRIFIT',
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes, // 여기 안에 있는 라우터들을 페이지로 사용하겠다
        theme: ThemeData(
          primarySwatch: Colors.teal,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    );
  }
}