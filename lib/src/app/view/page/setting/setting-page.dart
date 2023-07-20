import 'package:flutter/material.dart';
import 'package:healthy_care/src/app/view/page/setting/widget/setting_screen_test.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30,
            left: 10,
          ),
          child: SettingScreenTest(),
        ),
      ),
    );
  }
}
