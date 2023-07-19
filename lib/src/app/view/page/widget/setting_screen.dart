import 'package:flutter/material.dart';
import 'package:healthy_care/src/app/view/page/widget/welcome_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 10,
          ),
          child: Column(
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
              const SizedBox(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/person.png'),
                  ),
                  title: Text(
                    'Asrofun Niam',
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text('Profile User'),
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
                    return const WelcomeScreen();
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
          ),
        ),
      ),
    );
  }
}
