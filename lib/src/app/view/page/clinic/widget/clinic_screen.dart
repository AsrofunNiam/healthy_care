import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_care/src/app/bloc/clinic_list/clinic_list_query_bloc.dart';
import 'package:healthy_care/src/app/model/clinic_list.dart';

class ClinicScreen extends StatefulWidget {
  const ClinicScreen._(
      {required this.listDoctorImages,
      required this.index,
      required this.clinicList});

  final List listDoctorImages;
  final int index;
  final ClinicList clinicList;

  static Widget prepare({
    required ClinicList clinicList,
    required List listDoctorImages,
    required int index,
  }) {
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
      child: ClinicScreen._(
          clinicList: clinicList,
          index: index,
          listDoctorImages: listDoctorImages),
    );
  }

  @override
  State<ClinicScreen> createState() => _ClinicScreenState();
}

class _ClinicScreenState extends State<ClinicScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage(
                          widget.clinicList.clinicListAttribute!.photo!),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      '${widget.clinicList.clinicListAttribute!.name}',
                      style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      '${widget.clinicList.clinicListAttribute!.description}',
                      maxLines: 1,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 228, 228, 230),
                              shape: BoxShape.circle),
                          child: const Icon(Icons.phone_callback_sharp,
                              color: Color.fromARGB(255, 108, 233, 113)),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 227, 218, 243),
                              shape: BoxShape.circle),
                          child: const Icon(
                            Icons.chat_outlined,
                            color: Color.fromARGB(255, 18, 148, 255),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          // color: Colors.red,
          height: MediaQuery.of(context).size.height / 1.5,
          width: double.infinity,
          padding: const EdgeInsets.only(top: 20, left: 15),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.max,
            children: [
              const Text(
                'Description Clinic',
                style: TextStyle(
                    color: Color.fromARGB(255, 90, 90, 90),
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry is standard dummy text ever since the 1500'),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                // splashColor: Colors.red, // wait to activated
                // hoverColor: Colors.red,
                child: Row(
                  children: [
                    const Text(
                      'Reviews Outlet',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 105, 105, 105)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 20,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${widget.clinicList.clinicListAttribute?.rating}',
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Best Doctor',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color.fromARGB(255, 105, 105, 105)),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.listDoctorImages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(235, 126, 133, 240),
                                blurRadius: 4,
                                spreadRadius: 2)
                          ]),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage(widget.listDoctorImages[index]),
                              ),
                              title: const Text(
                                'Dr. Doctor Name',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              subtitle: const Text('Specialist Origen'),
                              trailing: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '4.7',
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Location Outlet',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: Color.fromARGB(255, 105, 105, 105)),
              ),
              const SizedBox(
                height: 5,
              ),
              ListTile(
                  leading: Container(
                    // color: Colors.red,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(235, 126, 133, 240),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.location_on,
                      color: Colors.black,
                    ),
                  ),
                  title: const Text(
                    'Clinic Hippokrates Medika',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: const Text('Kebayoran Lama, Jakarta Selatan'))
            ],
          ),
        )
      ],
    );
  }
}
