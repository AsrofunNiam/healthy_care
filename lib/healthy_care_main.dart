import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_care/src/app/bloc/create_user/create_user_bloc.dart';
import 'package:healthy_care/src/app/bloc/login/login_bloc.dart';
import 'package:healthy_care/src/app/view/page/welcome/welcome_page.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'src/app/bloc/theme_mode_bloc/theme_mode_bloc.dart';

void main() async {
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
  runApp(const HealthyCareMain());
}

class HealthyCareMain extends StatelessWidget {
  const HealthyCareMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
        BlocProvider(
          create: (context) => ThemeModeBloc(),
        ),
        BlocProvider(
          create: (context) => CreateUserBloc(),
        ),
      ],
      child: BlocBuilder<ThemeModeBloc, ThemeMode>(
        builder: (context, theme) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Medical Services',
            themeMode: theme,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const WelcomePage(),
          );
        },
      ),
    );
  }
}
