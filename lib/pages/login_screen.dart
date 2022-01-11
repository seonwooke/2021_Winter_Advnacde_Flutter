import 'package:advanced_flutter/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('LOGIN'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                  controller: emailController,
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(40),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                  controller: passwordController,
                  obscureText: true,
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(80),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await authController.signIn(
                        emailController.text, passwordController.text);
                    // Get.offAllNamed('/navigation');
                    Get.toNamed('/userInfo');
                  },
                  child: Text('LOGIN'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      minimumSize: Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
