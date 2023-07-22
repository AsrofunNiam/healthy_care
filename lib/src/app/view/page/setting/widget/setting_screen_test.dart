import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_care/src/app/bloc/bloc/clinic_list_query_bloc.dart';
import 'package:healthy_care/src/app/model/authentication.dart';
import 'package:healthy_care/src/app/view/page/welcome/welcome_page.dart';

class SettingScreenTest extends StatefulWidget {
  const SettingScreenTest._({required this.user});

  final Authentication user;

  static Widget prepare({required Authentication user}) {
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
      child: SettingScreenTest._(user: user),
    );
  }

  @override
  State<SettingScreenTest> createState() => _SettingScreenTestState();
}

class _SettingScreenTestState extends State<SettingScreenTest> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          child: ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/person.png'),
            ),
            title: Text(
              '${widget.user.user?.email}',
              style: const TextStyle(fontSize: 20),
            ),
            subtitle: const Text('Profile User'),
          ),
        ),
        const Divider(
          height: 20,
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          onTap: () {},
          leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Color.fromARGB(235, 85, 173, 231),
                shape: BoxShape.circle),
            child: const Icon(
              Icons.person,
              color: Colors.black,
              size: 20,
            ),
          ),
          title: const Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          onTap: () {},
          leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Color.fromARGB(235, 145, 151, 240),
                shape: BoxShape.circle),
            child: const Icon(
              Icons.notifications_none_outlined,
              color: Colors.deepPurple,
              size: 20,
            ),
          ),
          title: const Text(
            'Notification',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          onTap: () {},
          leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 138, 153, 236),
                shape: BoxShape.circle),
            child: const Icon(
              Icons.privacy_tip_outlined,
              color: Colors.indigo,
              size: 20,
            ),
          ),
          title: const Text(
            'Privacy',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          onTap: () {},
          leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.green.shade100, shape: BoxShape.circle),
            child: const Icon(
              Icons.settings_suggest_outlined,
              color: Colors.green,
              size: 20,
            ),
          ),
          title: const Text(
            'Privacy',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          onTap: () {},
          leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 245, 198, 128),
                shape: BoxShape.circle),
            child: const Icon(
              Icons.info_outline_rounded,
              color: Colors.orange,
              size: 20,
            ),
          ),
          title: const Text(
            'About Use',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const WelcomePage();
            }));
          },
          leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 238, 132, 124),
                shape: BoxShape.circle),
            child: const Icon(
              Icons.logout,
              color: Colors.red,
              size: 20,
            ),
          ),
          title: const Text(
            'Log Out',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
        ),
      ],
    );
  }
}
