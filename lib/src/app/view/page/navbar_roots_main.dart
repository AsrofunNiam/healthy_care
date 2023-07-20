import 'package:flutter/material.dart';
import 'package:healthy_care/src/app/view/page/home/home_page.dart';
import 'package:healthy_care/src/app/view/page/setting/setting-page.dart';
import 'package:healthy_care/src/app/view/page/welcome/welcome_page.dart';
import 'package:healthy_care/src/app/view/page/widget_test/home_screen.dart';
import 'package:healthy_care/src/app/view/page/widget_test/setting_screen.dart';
import 'package:healthy_care/src/app/view/page/widget_test/welcome_screen.dart';

class NavBarRootsMain extends StatefulWidget {
  const NavBarRootsMain({super.key});

  @override
  State<NavBarRootsMain> createState() => _NavBarRootsMainState();
}

class _NavBarRootsMainState extends State<NavBarRootsMain> {
  int _selectedIndex = 0;
  final _screens = [
    HomePage(),
    const SettingPage(),
    const WelcomePage(),
    const SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: _screens[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color.fromARGB(235, 85, 94, 218),
            unselectedItemColor: Colors.black,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            onTap: (value) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return _screens[value];
              }));
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_outline), label: 'Message'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month), label: 'Schedule'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Setting'),
            ]),
      ),
    );
  }
}
