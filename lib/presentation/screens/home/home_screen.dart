import 'package:blood_bank/core/resources/resources.dart';
import 'package:blood_bank/presentation/screens/home/home_tab.dart';
import 'package:blood_bank/presentation/screens/home/profile_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  static const List<MyCustomBottomNavBarItem> tabs = [
    MyCustomBottomNavBarItem(
      icon: Icon(Icons.home_outlined),
      activeIcon: Icon(Icons.home),
      label: 'HOME',
    ),
    MyCustomBottomNavBarItem(
      icon: Icon(Icons.account_circle_outlined),
      activeIcon: Icon(Icons.account_circle),
      label: 'PROFILE',
    ),
  ];
  List<Widget> items = [
    const HomeTab(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: items[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColor.primaryColor,
        selectedFontSize: 12,
        unselectedItemColor: Color.fromARGB(255, 66, 86, 124),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          _goOtherTab(context, index);
        },
        currentIndex: _currentIndex,
        items: tabs,
      ),
    );
  }

  void _goOtherTab(BuildContext context, int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class MyCustomBottomNavBarItem extends BottomNavigationBarItem {
  const MyCustomBottomNavBarItem(
      {required Widget icon, String? label, Widget? activeIcon})
      : super(icon: icon, label: label, activeIcon: activeIcon ?? icon);
}
