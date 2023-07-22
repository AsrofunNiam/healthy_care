import 'package:flutter/material.dart';
import 'package:healthy_care/src/app/model/clinic_list.dart';
import 'package:healthy_care/src/app/view/page/clinic/widget/clinic_screen.dart';
import 'package:healthy_care/src/app/view/page/clinic/widget/clinic_screen_footer.dart';

class ClinicPage extends StatefulWidget {
  const ClinicPage._(
      {super.key,
      required this.listDoctorImages,
      required this.index,
      required this.clinicList});
  final ClinicList clinicList;
  final List listDoctorImages;
  final int index;

  static Route<bool?> route({
    required ClinicList clinicList,
    required List listDoctorImages,
    required int index,
  }) {
    return MaterialPageRoute(builder: (context) {
      return ClinicPage._(
        clinicList: clinicList,
        index: index,
        listDoctorImages: listDoctorImages,
      );
      // return MultiBlocProvider(
      //   providers: const [
      //     // BlocProvider(
      //     //   create: (context) =>
      //     //       RestaurantsQueryBloc()..add(const RestaurantsQueryEvent.get()),
      //     // ),
      //     // BlocProvider(
      //     //   create: (context) => SaveTokenBloc(),
      //     // )
      //   ],
      //   child: NavBarRootsMain._(user: user),
      // );
    });
  }

  @override
  State<ClinicPage> createState() => _ClinicPageState();
}

class _ClinicPageState extends State<ClinicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(235, 126, 133, 240),
      body: SingleChildScrollView(
        child: ClinicScreen.prepare(
            listDoctorImages: widget.listDoctorImages,
            index: widget.index,
            clinicList: widget.clinicList),
      ),
      bottomNavigationBar: const ClinicScreenFooter(),
    );
  }
}
