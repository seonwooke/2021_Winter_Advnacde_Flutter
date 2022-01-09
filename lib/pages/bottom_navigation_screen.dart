import 'package:advanced_flutter/controllers/navigation_controller.dart';
import 'package:advanced_flutter/pages/home_screen.dart';
import 'package:advanced_flutter/pages/my_page_screen.dart';
import 'package:advanced_flutter/pages/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'chatting_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
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
                SearchScreen(),
                ChattingScreen(),
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
                backgroundColor: Colors.teal,
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search),
                label: 'SEARCH',
                backgroundColor: Colors.teal,
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.bell),
                label: 'ALERTS',
                backgroundColor: Colors.teal,
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_alt_circle),
                label: 'MYPAGE',
                backgroundColor: Colors.teal,
              ),
            ],
          ),
        );
      },
    );
  }
}
