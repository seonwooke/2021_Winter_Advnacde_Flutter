import 'package:advanced_flutter/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Login'),
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
                SizedBox(height: 40),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                  controller: passwordController,
                  obscureText: true,
                ),
                ElevatedButton(
                    onPressed: () async {
                      await authController.signIn(emailController.text, passwordController.text);
                      Get.toNamed('/home');
                    },
                    child: Text('Log In')
                ),
                TextButton(
                    onPressed: () => Get.toNamed('/signUp'),
                    child: Text('Sign Up')
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
