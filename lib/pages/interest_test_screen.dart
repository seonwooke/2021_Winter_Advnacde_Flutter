import 'package:advanced_flutter/controllers/user_info_controller.dart';
import 'package:chip_list/chip_list.dart';
import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class InterestTestScreen extends StatelessWidget {
  final userInfoController = Get.find<UserInfoController>();
  List<String> tags = [];
  List<String> options = [
    'News', 'Entertainment', 'Politics',
    'Automotive', 'Sports', 'Education',
    'Fashion', 'Travel', 'Food', 'Tech',
    'Science',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            child: Text(
              '(2/2)',
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
          Text('더 알고싶어요\n이대성님을'),
          SizedBox(height: 30,),
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
