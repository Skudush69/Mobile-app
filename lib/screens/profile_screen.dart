import 'package:app/screens/login_screen.dart';
import 'package:flutter/material.dart';

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
        backgroundColor: Color.fromARGB(87, 21, 204, 15),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(216, 22, 13, 191),
          fontSize: 25,
        ),
        toolbarHeight: 50,
      ),
      body: Column(
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
                )
              ],
            ),
          )),
          SizedBox(height: 20,),
          Setting(),
          // SafeArea(
          //     child: Column(
          //   children: [
          //     SizedBox(
          //       height: 20,
          //     ),
          //     SizedBox(
          //       child: Row(
          //         children: [
          //           IconButton(onPressed: () {}, icon: Icon(Icons.people)),
          //           TextButton(onPressed: () {}, child: Text("Invite friends"))
          //         ],
          //       ),
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     SizedBox(
          //       child: Row(
          //         children: [
          //           IconButton(onPressed: () {}, icon: Icon(Icons.money)),
          //           TextButton(onPressed: () {}, child: Text("Transactions"))
          //         ],
          //       ),
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     SizedBox(
          //       child: Row(
          //         children: [
          //           IconButton(onPressed: () {}, icon: Icon(Icons.file_copy)),
          //           TextButton(
          //               onPressed: () {}, child: Text("Terms and Conditions"))
          //         ],
          //       ),
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     SizedBox(
          //       child: Row(
          //         children: [
          //           IconButton(onPressed: () {}, icon: Icon(Icons.privacy_tip)),
          //           TextButton(onPressed: () {}, child: Text("Privacy Policy"))
          //         ],
          //       ),
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     SizedBox(
          //       child: Row(
          //         children: [
          //           IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          //           TextButton(onPressed: () {}, child: Text("Get Help"))
          //         ],
          //       ),
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     SizedBox(
          //       child: Row(
          //         children: [
          //           IconButton(
          //               onPressed: () {}, icon: Icon(Icons.email_rounded)),
          //           TextButton(onPressed: () {}, child: Text("Feedback"))
          //         ],
          //       ),
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //   ],
          // ))
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
          leading: Icon(Icons.person_add_alt_sharp),
          onTap: () {},
          title: Text("Invite Friends"),
        ),
         ListTile(
          leading: Icon(Icons.attach_money_rounded),
          onTap: () {},
          title: Text("Transaction"),
        ),
        ListTile(
          leading: Icon(Icons.filter_none_outlined),
          onTap: () {},
          title: Text("Terms and conditions"),
        ),
        ListTile(
          leading: Icon(Icons.private_connectivity_outlined),
          onTap: () {},
          title: Text("Privacy Policy"),
        ),
        ListTile(
          leading: Icon(Icons.call),
          onTap: () {},
          title: Text("Get Help"),
        ),
        ListTile(
          leading: Icon(Icons.email_outlined),
          onTap: () {},
          title: Text("Feedback"),
        ),
        ListTile(
          leading: Icon(Icons.logout),
          onTap: () {
             Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          title: Text("Log Out"),
        )
      ],
    );
  }
}