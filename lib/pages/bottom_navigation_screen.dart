import 'package:advanced_flutter/controllers/navigation_controller.dart';
import 'package:advanced_flutter/pages/home_screen.dart';
import 'package:advanced_flutter/pages/my_page_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationScreen extends StatelessWidget {
  final navigationController = Get.find<NavigationController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomeScreen(),
                MyPageScreen(),
                MyPageScreen(),
                MyPageScreen(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: 'HOME',
                backgroundColor: Colors.blueAccent,
              ),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.sportscourt),
                  label: 'NEWS'
              ),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.bell),
                  label: 'ALERTS'
              ),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.person_alt_circle),
                  label: 'MYPAGE'
              ),
            ],
          ),
        );
      },
    );
  }
}
