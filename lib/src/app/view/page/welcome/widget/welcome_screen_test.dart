import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_care/src/app/bloc/theme_mode_bloc/theme_mode_bloc.dart';
import 'package:healthy_care/src/app/view/page/doctor/doctor_page.dart';
import 'package:healthy_care/src/app/view/page/doctor/widget/doctor_screen.dart';
import 'package:healthy_care/src/app/view/page/login/login_page.dart';
import 'package:healthy_care/src/app/view/page/schedule/widget/schedule_screen.dart';
import 'package:healthy_care/src/app/view/page/sign_up/sign_up_page.dart';
import 'package:healthy_care/src/app/view/page/theme_mode_switch.dart';

class WelcomeScreenTest extends StatelessWidget {
  const WelcomeScreenTest({
    super.key,
  });

  static Widget prepare() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeModeBloc(),
        ),
      ],
      child: const WelcomeScreenTest(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const ThemeModeSwitcher(),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    // Navigator.push(context, NavBarRootsMain.prepare());
                  },
                  child: const Text(
                    'SKIP',
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const DoctorPage();
                      },
                    ));
                  },
                  child: const Text(
                    'New Future ',
                    style: TextStyle(fontSize: 20),
                  )),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Image.asset('assets/images/medicine.png'),
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          'Layanan Dokter',
          style: TextStyle(
              color: Color.fromARGB(235, 85, 94, 218),
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              wordSpacing: 2),
        ),
        const Text(
          'Silakan Cek Jadwal Terbaik ',
          style: TextStyle(
              color: Color.fromARGB(235, 85, 94, 218),
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              wordSpacing: 2),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              color: const Color.fromARGB(235, 85, 94, 218),
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, SignUpPage.route());
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return const SignUpPage();
                  // }));
                },
                child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Material(
              color: const Color.fromARGB(235, 85, 94, 218),
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, LoginPage.route(context));
                },
                child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Text(
                      'Log In',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            )
          ],
        )
      ],
    );
  }
}
