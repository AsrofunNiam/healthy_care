import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_care/src/app/bloc/clinic_list/clinic_list_query_bloc.dart';
import 'package:healthy_care/src/app/model/authentication.dart';
import 'package:healthy_care/src/app/view/page/clinic/clinic_page.dart';

class HomeScreenTest extends StatefulWidget {
  const HomeScreenTest._(
      {required this.symptoms,
      required this.listDoctorImages,
      required this.user});

  final List symptoms;
  final List listDoctorImages;
  final Authentication user;

  static Widget prepare(
      {required List symptoms,
      required List listDoctorImages,
      required Authentication user}) {
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
      child: HomeScreenTest._(
        listDoctorImages: listDoctorImages,
        symptoms: symptoms,
        user: user,
      ),
    );
  }

  @override
  State<HomeScreenTest> createState() => _HomeScreenTestState();
}

class _HomeScreenTestState extends State<HomeScreenTest> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClinicListQueryBloc, ClinicListQueryState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello ${widget.user.user?.email}',
                    style: const TextStyle(
                      // color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const CircleAvatar(
                    backgroundColor: Color.fromARGB(235, 85, 94, 218),
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/person.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(235, 126, 133, 240),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.white, blurRadius: 6, spreadRadius: 4)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.add,
                            color: Colors.blue,
                            size: 35,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Clinic Visit',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Mak an appointment',
                        style: TextStyle(
                          color: Color.fromARGB(255, 218, 217, 217),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(235, 85, 94, 218),
                            blurRadius: 6,
                            spreadRadius: 4)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(235, 126, 133, 240),
                              shape: BoxShape.circle),
                          child: const Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 35,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Home Visit',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Call the doctor home',
                        style: TextStyle(
                          color: Color.fromARGB(255, 44, 44, 44),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'What are you alternatives ?',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 88, 88, 87)),
              ),
            ),
            SizedBox(
              height: 70,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: widget.symptoms.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 2,
                              color: Color.fromARGB(235, 126, 133, 240))
                        ]),
                    child: Center(
                      child: Text(widget.symptoms[index]),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Best Clinic ',
                style: TextStyle(
                    fontSize: 25, color: Color.fromARGB(255, 82, 81, 81)),
              ),
            ),
            state.maybeWhen(
              orElse: () {
                return const SizedBox();
              },
              loaded: (clinicList) {
                return GridView.builder(
                  shrinkWrap: true,
                  itemCount: clinicList.length, // edit hire
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            ClinicPage.route(
                              clinicList: clinicList[index],
                              listDoctorImages: widget.listDoctorImages,
                              index: index,
                            ));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromARGB(235, 126, 133, 240),
                                  blurRadius: 4,
                                  spreadRadius: 2)
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: NetworkImage(clinicList[index]
                                      .clinicListAttribute
                                      ?.photo ??
                                  '${clinicList[1].clinicListAttribute?.photo}'),
                              // backgroundImage: AssetImage(
                              //     '${clinicList[index].clinicListAttribute?.photo}'),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              '${clinicList[index].clinicListAttribute?.name}',
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 73, 73, 73)),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              '${clinicList[index].clinicListAttribute?.description}',
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 80, 79, 79)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  '${clinicList[index].clinicListAttribute?.rating}',
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 80, 79, 79)),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            )
          ],
        );
      },
    );
  }
}
