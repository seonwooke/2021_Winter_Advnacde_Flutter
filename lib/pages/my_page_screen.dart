import 'package:advanced_flutter/controllers/auth_controller.dart';
import 'package:advanced_flutter/models/user_model.dart';
import 'package:advanced_flutter/services/firestore_service.dart';
import 'package:advanced_flutter/widgets/loading_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class MyPageScreen extends StatelessWidget {

  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: FirestoreService.getUser(authController.firebaseUser!.email.toString()),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            UserModel user = snapshot.data as UserModel;
            return Scaffold(
              appBar: AppBar(
                title: Text('MYPAGE'),
                centerTitle: true,
                backgroundColor: Colors.teal,
                actions: [
                  IconButton(
                    icon: Icon(Icons.exit_to_app),
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                      Get.offAllNamed('/starting');
                    },
                  )
                ],
              ),
              body: ListView(
                children: [
                  Text(user.email.toString()),
                  Text(user.password.toString()),
                  Text(user.name.toString()),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Text(
                      authController.firebaseUser!.email.toString(),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  // Center(
                  //   child: Text(
                  //     // userModel.toString(),
                  //   ),
                  // ),
                  SizedBox(
                    height: 40,
                  ),
                  Stack(
                    children: [
                      Lottie.asset('assets/lotties/light.json'),
                      Positioned(
                        top: 155,
                        left: 155,
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.blueAccent,
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          }
          else {
            return Center(
              child: loadingWidget(),
            );
          }
        });
  }
}
