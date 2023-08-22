import 'package:flutter/material.dart';
import 'package:healthy_care/src/app/view/page/clinic/widget/clinic_screen_footer.dart';
import 'package:healthy_care/src/app/view/page/doctor/widget/doctor_screen.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: DoctorScreen.prepare(),
        ),
      ),
      bottomNavigationBar: ClinicScreenFooter(),
    );
  }
}
