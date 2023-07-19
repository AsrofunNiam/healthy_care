import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_care/src/app/bloc/theme_mode_bloc/theme_mode_bloc.dart';
import 'package:healthy_care/src/app/view/page/widget/login_screen.dart';
import 'package:healthy_care/src/app/view/page/widget/navbar_roots.dart';
import 'package:healthy_care/src/app/view/page/widget/signup_screen.dart';
import 'package:healthy_care/src/app/view/page/widget/theme_mode_switch.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  // ThemeModeBloc? themeModeBloc;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeModeBloc(),
      child: Material(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const NavBarRoots();
                          }));
                        },
                        child: const Text(
                          'SKIP',
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SignUpScreen();
                        }));
                      },
                      child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 40),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const LoginScreen();
                        }));
                      },
                      child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 40),
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
          ),
        ),
      ),
    );
  }
}
