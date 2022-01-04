import 'package:advanced_flutter/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text('Sign Up'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(hintText: 'Full Name'),
                  controller: nameController,
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(40),
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Email'),
                  controller: emailController,
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(40),
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Password'),
                  controller: passwordController,
                  obscureText: true,
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(40),
                ),
                ElevatedButton(
                  onPressed: () async {
                    var isCreated = await authController.createUser(
                        nameController.text,
                        emailController.text,
                        passwordController.text);
                    Get.toNamed('/login');
                    // if (isCreated) {
                    //   await signUpController.setUser(UserModel().copyWith(
                    //       uid: authController.firebaseUser!.uid,
                    //       name: nameController.text));
                    //   // await Get.offAll('/home');
                    // }
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      minimumSize: Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      )),
                  child: Text('Sign Up'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
