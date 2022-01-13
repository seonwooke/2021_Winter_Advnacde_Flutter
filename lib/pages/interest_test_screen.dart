import 'package:advanced_flutter/controllers/user_info_controller.dart';
import 'package:chip_list/chip_list.dart';
import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:filter_list/filter_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class InterestTestScreen extends StatelessWidget {
  final userInfoController = Get.find<UserInfoController>();
  List<String> countList = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
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
          Expanded(
            child: FilterListWidget<String>(
              listData : countList,
              hideHeaderText: true,
              onApplyButtonClick: (list) {
                if (list != null) {
                  print("Selected items count : ${list.length}");
                }
              },
              choiceChipLabel: (item) {
                return item.toString();
              },
              validateSelectedItem: (list, val) {
                return list!.contains(val);
              },
              onItemSearch: (list, text) {
                if (list!.any((element) =>
                  element.toLowerCase().contains(text.toLowerCase()))) {
                  return list.where((element) =>
                    element.toLowerCase().contains(text.toLowerCase())).toList();
                }
                else {
                  return [];
                }
              },
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
