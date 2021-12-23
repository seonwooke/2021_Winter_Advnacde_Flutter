import 'package:advanced_flutter/controllers/auth_controller.dart';
import 'package:advanced_flutter/models/user_model.dart';
import 'package:advanced_flutter/services/constant_service.dart';
import 'package:advanced_flutter/services/firestore_service.dart';
import 'package:advanced_flutter/widgets/loading_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final authController = Get.find<AuthController>();


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: FirestoreService.getUser(authController.firebaseUser!.email.toString()),
        builder: (context, snapshot) {
          Future<UserModel> userModel = FirestoreService.getUser(authController.firebaseUser!.email.toString());
          if (snapshot.connectionState == ConnectionState.done)
            return Scaffold(
              appBar: AppBar(
                title: Text('HOME'),
                actions: [
                  IconButton(
                    icon: Icon(Icons.exit_to_app),
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                      Get.toNamed('/login');
                    },
                  )
                ],
              ),
              body: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      authController.firebaseUser!.email.toString(),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      userModel.toString(),
                    ),
                  ],
                ),
              ),
            );
          return Center(
            child: loadingWidget(),
          );
        });
  }
}
