import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_care/src/app/bloc/clinic_list/clinic_list_query_bloc.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen._({super.key});
  static Widget prepare() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              ClinicListQueryBloc()..add(const ClinicListQueryEvent.get()),
        ),
        // BlocProvider(
        //   create: (context) => SaveTokenBloc(),
        // )
      ],
      child: const ScheduleScreen._(),
    );
  }

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

enum FilterStatus { upcoming, complete, cancel }

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 25,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text('Testing Schedule Page '),
              )
            ],
          ),
        )
      ],
    );
  }
}
