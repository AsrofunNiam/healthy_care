import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_care/src/app/bloc/theme_mode_bloc/theme_mode_bloc.dart';
import 'package:healthy_care/src/app/view/page/welcome/widget/welcome_screen_test.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
          child: const WelcomeScreenTest(),
        ),
      ),
    );
  }
}
