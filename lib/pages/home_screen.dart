import 'package:advanced_flutter/controllers/auth_controller.dart';
import 'package:advanced_flutter/models/user_model.dart';
import 'package:advanced_flutter/services/firestore_service.dart';
import 'package:advanced_flutter/widgets/loading_widget.dart';
import 'package:advanced_flutter/widgets/user_card_front_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirestoreService.getUsers(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          List<UserModel> userList = snapshot.data as List<UserModel> ;
          List<Widget> userCards = userList.map((value)=>userCardFront(value)).toList();
          return Scaffold(
            appBar: AppBar(
              title: Text('PRIFIT'),
              centerTitle: true,
              backgroundColor: Colors.teal,
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Container(
                    height: ScreenUtil().setHeight(200),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image : AssetImage('assets/images/leo.jpeg'),
                        fit : BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(16),
                  ),
                  Text(
                    'USER INFORMATION',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(16),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(200),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: userCards,
                    ),
                  )
                ],
              ),
            ),
          );
        }
        else {
          return Center(
            child: loadingWidget(),
          );
        }
      }
    );
  }
}
