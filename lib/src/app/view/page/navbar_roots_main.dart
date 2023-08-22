import 'package:flutter/material.dart';
import 'package:healthy_care/src/app/model/authentication.dart';
import 'package:healthy_care/src/app/view/page/home/home_page.dart';
import 'package:healthy_care/src/app/view/page/schedule/schedule_page.dart';
import 'package:healthy_care/src/app/view/page/setting/setting-page.dart';

class NavBarRootsMain extends StatefulWidget {
  const NavBarRootsMain._({required this.user});
  final Authentication user;

  static Route<bool?> prepare({
    Authentication? user,
  }) {
    return MaterialPageRoute(builder: (context) {
      return NavBarRootsMain._(user: user!);
      // return MultiBlocProvider(
      //   providers: const [
      //     // BlocProvider(
      //     //   create: (context) =>
      //     //       RestaurantsQueryBloc()..add(const RestaurantsQueryEvent.get()),
      //     // ),
      //     // BlocProvider(
      //     //   create: (context) => SaveTokenBloc(),
      //     // )
      //   ],
      //   child: NavBarRootsMain._(user: user),
      // );
    });
  }

  @override
  State<NavBarRootsMain> createState() => _NavBarRootsMainState();
}

class _NavBarRootsMainState extends State<NavBarRootsMain> {
  final int _selectedIndex = 0;
  @override
    
  Widget build(BuildContext context) {
    final screens = [
      HomePage(user: widget.user),
      SettingPage(user: widget.user),
      const SchedulePage(),
      SettingPage(user: widget.user),
    ];
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: screens[_selectedIndex],
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
                return screens[value];
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
