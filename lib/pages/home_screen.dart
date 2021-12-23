import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.exit_to_app
            ),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Get.toNamed('/login');
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          'HELLO!'
        ),
      ),
    );
  }
}
