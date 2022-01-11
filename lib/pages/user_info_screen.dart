import 'package:advanced_flutter/controllers/user_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_progress_bar/cupertino_progress_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class UserInfoScreen extends StatelessWidget {
  final userInfoController = Get.find<UserInfoController>();

  final formKey = GlobalKey<FormState>();
  TextEditingController _mbtiController = TextEditingController();
  TextEditingController _careerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            child: Text(
              '(1/2)',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          _progressBar(),
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _mbtiController,
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return '직업을 입력하세요.';
                      }
                      else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      hintText: 'MBTI를 입력하세요.',
                    ),
                    onChanged: (text) {
                      if (text.isEmpty) {
                        userInfoController.guageValue.value -= 25 ;
                      }
                      else {
                        userInfoController.guageValue.value = 25 ;
                      }
                    },
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(10),
                  ),
                  TextFormField(
                    controller: _careerController,
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return '직업을 입력하세요.';
                      }
                      else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: '직업을 입력하세요.',
                    ),
                    onChanged: (text) {
                      if (text.isEmpty) {
                        userInfoController.guageValue.value -= 25 ;
                      }
                      else {
                        userInfoController.guageValue.value = 50 ;
                      }
                    },
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(80),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/interestTest');
                    },
                    child: Text('입력완료'),
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
        ],
      ),
    );
  }

  Widget _progressBar() {
    return Stack(
      children: [
        Container(
          color: Colors.grey,
          height: 5,
        ),
        Obx(()=>
            SfLinearGauge(
              minimum: 0.0,
              maximum: 100.0,
              animateAxis: true,
              showLabels: false,
              showAxisTrack: false,
              showTicks: false,
              barPointers: [
                LinearBarPointer(
                  value: userInfoController.guageValue.value,
                  position: LinearElementPosition.outside,
                  color: Colors.deepPurple,
                )
              ],
              orientation: LinearGaugeOrientation.horizontal,
            ),
        ),
      ],
    );
  }
}
