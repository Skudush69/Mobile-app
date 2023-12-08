import 'package:app/screens/login_screen.dart';
import 'package:app/screens/privacy_screen.dart';
import 'package:flutter/material.dart';
import 'package:app/screens/terms_screen.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PROFILE'),
        titleSpacing: 00.0,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(87, 21, 204, 15),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(216, 22, 13, 191),
          fontSize: 25,
        ),
        toolbarHeight: 50,
      ),
      body:  Column(
        children: [
          SizedBox(
            height: 20,
          ),
          SafeArea(
              child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  child:Image.asset("images/ahgcc logo.png",height: 100, width: 100,),
                )
              ],
            ),
          )),
          SizedBox(
            height: 20,
          ),
          Setting(),
        ],
      ),
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return ListBody(
      children: [
        ListTile(
          leading: const Icon(Icons.person_add_alt_sharp),
          onTap: () {},
          title: const Text("Invite Friends"),
        ),
        ListTile(
          leading: const Icon(Icons.attach_money_rounded),
          onTap: () {},
          title: const Text("Transaction"),
        ),
        ListTile(
          leading: const Icon(Icons.filter_none_outlined),
          onTap: () { Navigator.of(context).push(MaterialPageRoute(builder:(context) => const Terms()));},
          title: const Text("Terms and conditions"),
        ),
        ListTile(
          leading: const Icon(Icons.private_connectivity_outlined),
          onTap: () { Navigator.of(context).push(MaterialPageRoute(builder:(context) => const Privacy()));},
          title: const Text("Privacy Policy"),
        ),
        ListTile(
          leading: const Icon(Icons.call),
          onTap: () {},
          title: const Text("Get Help"),
        ),
        ListTile(
          leading: const Icon(Icons.email_outlined),
          onTap: () {},
          title: const Text("Feedback"),
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          title: const Text("Log Out"),
        )
      ],
    );
  }
}
