import 'package:flutter/material.dart';
import 'package:healthy_care/src/app/view/page/home/widget/home_screen_test.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List symptoms = [
    'Temperature',
    'Snuffle',
    'Cough',
    'Cold',
    'Temperature',
    'Snuffle',
    'Cough',
    'Cold',
  ];

  final List _listDoctorImages = [
    'assets/images/avatar.png',
    'assets/images/doctor1.jpg',
    'assets/images/doctor2.jpg',
    'assets/images/doctor3.jpg',
    'assets/images/doctor2.jpg',
    'assets/images/doctor3.jpg',
    'assets/images/doctor2.jpg',
    'assets/images/doctor3.jpg',
    'assets/images/doctor2.jpg',
    'assets/images/doctor3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
        color: Colors.white,
        child: HomeScreenTest(
            symptoms: symptoms, listDoctorImages: _listDoctorImages),
      ),
    );
  }
}
