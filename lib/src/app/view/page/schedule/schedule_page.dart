import 'package:flutter/material.dart';
import 'package:healthy_care/src/app/view/page/schedule/widget/schedule_screen.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: ScheduleScreen.prepare(),
        ),
      ),
    );
  }
}
