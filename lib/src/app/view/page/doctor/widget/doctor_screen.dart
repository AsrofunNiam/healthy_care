import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_care/src/app/bloc/clinic_list/clinic_list_query_bloc.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen._({super.key});
  static Widget prepare() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              ClinicListQueryBloc()..add(const ClinicListQueryEvent.get()),
        ),
      ],
      child: const DoctorScreen._(),
    );
  }

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
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
                  'Screen Doctor',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SafeArea(
            child: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          width: double.infinity,
          child: Column(
            children: [
              CircleAvatar(
                radius: 65.0,
                backgroundImage: AssetImage('assets/images/doctor1.jpg'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Dr. Name Sp. PD',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 100,
                // color: const Color.fromARGB(255, 207, 207, 207),
                child: Text(
                  textAlign: TextAlign.center,
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry is standard dummy text ever since the 1500',
                  style: TextStyle(),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(235, 126, 133, 240),
                                blurRadius: 3,
                                spreadRadius: 2)
                          ]),
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: const Column(
                        children: [
                          Text('Experience'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('10 Year')
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(235, 126, 133, 240),
                                blurRadius: 3,
                                spreadRadius: 2)
                          ]),
                      padding: EdgeInsets.symmetric(vertical: 27),
                      child: const Column(
                        children: [
                          Text('Rating'),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.amber),
                              SizedBox(
                                width: 10,
                              ),
                              Text('4.7'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(235, 126, 133, 240),
                                blurRadius: 3,
                                spreadRadius: 2)
                          ]),
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: const Column(
                        children: [
                          Text('Patients'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('120 People')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // InkWell(
              //   onTap: () {},
              //   child: Container(
              //     width: MediaQuery.of(context).size.width,
              //     padding: const EdgeInsets.symmetric(vertical: 18),
              //     decoration: BoxDecoration(
              //         color: const Color.fromARGB(235, 126, 133, 240),
              //         borderRadius: BorderRadius.circular(10)),
              //     child: const Center(
              //       child: Text(
              //         'Booking Appointment',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 20,
              //             fontWeight: FontWeight.w500),
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ))
      ],
    );
  }
}
