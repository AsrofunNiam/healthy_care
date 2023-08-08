import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_care/src/app/bloc/clinic_list/clinic_list_query_bloc.dart';
import 'package:healthy_care/src/app/view/page/schedule/widget/schedule_upcoming.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen._({super.key});
  static Widget prepare() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              ClinicListQueryBloc()..add(const ClinicListQueryEvent.get()),
        ),
      ],
      child: const ScheduleScreen._(),
    );
  }

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

// enum FilterStatus { upcoming, complete, cancel }

class _ScheduleScreenState extends State<ScheduleScreen> {
  late int _buttonIndex = 0;
  final _scheduleWidgets = [
    const ScheduleUpComing(),
    const Center(
      child: Text('Complated'),
    ),
    const Center(
      child: Text('Canceled'),
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // setState(() {});
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 10,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Stack(
                  children: [
                    // const SizedBox(
                    //   height: 50,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.black,
                            size: 25,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Center(
                      child: Text(
                        'Appointment Doctor',
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _buttonIndex = 0;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _buttonIndex == 0
                                ? const Color.fromARGB(235, 126, 133, 240)
                                : const Color.fromARGB(255, 221, 221, 221)),
                        child: Text(
                          'Up Coming',
                          style: TextStyle(
                              color: _buttonIndex == 0
                                  ? Colors.white
                                  : Colors.black38,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _buttonIndex = 1;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _buttonIndex == 1
                                ? const Color.fromARGB(235, 126, 133, 240)
                                : const Color.fromARGB(255, 221, 221, 221)),
                        child: Text(
                          'Completed',
                          style: TextStyle(
                              color: _buttonIndex == 1
                                  ? Colors.white
                                  : Colors.black38,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _buttonIndex = 2;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _buttonIndex == 2
                                ? const Color.fromARGB(235, 126, 133, 240)
                                : const Color.fromARGB(255, 221, 221, 221)),
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                              color: _buttonIndex == 2
                                  ? Colors.white
                                  : Colors.black38,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              _scheduleWidgets[_buttonIndex]
            ],
          ),
        ),
      ),
    );
  }
}
