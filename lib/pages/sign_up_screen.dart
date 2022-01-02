import 'package:advanced_flutter/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
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
                SizedBox(height: 40),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Email'),
                  controller: emailController,
                ),
                SizedBox(height: 40),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Password'),
                  controller: passwordController,
                  obscureText: true,
                ),
                TextButton(
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
