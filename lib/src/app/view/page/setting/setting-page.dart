import 'package:flutter/material.dart';
import 'package:healthy_care/src/app/model/authentication.dart';
import 'package:healthy_care/src/app/view/page/setting/widget/setting_screen_test.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key, required this.user});
  final Authentication user;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 10,
          ),
          child: SettingScreenTest.prepare(user: user),
        ),
      ),
    );
  }
}
