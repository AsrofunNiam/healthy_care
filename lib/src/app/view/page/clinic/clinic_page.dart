import 'package:flutter/material.dart';
import 'package:healthy_care/src/app/view/page/clinic/widget/clinic_screen.dart';
import 'package:healthy_care/src/app/view/page/clinic/widget/clinic_screen_footer.dart';

class ClinicPage extends StatelessWidget {
  const ClinicPage(
      {super.key, required this.listDoctorImages, required this.index});
  final List listDoctorImages;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(235, 126, 133, 240),
      body: SingleChildScrollView(
        child: ClinicScreen(listDoctorImages: listDoctorImages, index: index),
      ),
      bottomNavigationBar: const ClinicScreenFooter(),
    );
  }
}
