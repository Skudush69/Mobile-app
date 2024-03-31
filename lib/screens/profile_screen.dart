// import 'package:app/screens/login_screen.dart';
// import 'package:app/screens/privacy_screen.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:app/screens/terms_screen.dart';
// import 'package:url_launcher/url_launcher.dart';

// class Profile extends StatefulWidget {
//   const Profile({Key? key}) : super(key: key);

//   @override
//   State<Profile> createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   late User currentUser;
//   Map<String, dynamic>? userData;

//   @override
//   void initState() {
//     super.initState();
//     getUserData();
//   }

//   Future<void> getUserData() async {
//     currentUser = FirebaseAuth.instance.currentUser!;
//     DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
//         .collection('users')
//         .doc(currentUser.uid)
//         .get();

//     setState(() {
//       userData = userSnapshot.data() as Map<String, dynamic>?;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('PROFILE'),
//         centerTitle: true,
//         backgroundColor: const Color.fromARGB(87, 21, 204, 15),
//         titleTextStyle: const TextStyle(
//           color: Color.fromARGB(216, 22, 13, 191),
//           fontSize: 25,
//         ),
//         toolbarHeight: 50,
//       ),
//       body: Column(
//         children: [
//           const SizedBox(height: 10),
//           SafeArea(
//             child: Center(
//               child: Column(
//                 children: [
//                   CircleAvatar(
//                     radius: 50,
//                     child: Image.asset(
//                       "images/ahgcc logo.png",
//                       height: 100,
//                       width: 100,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           userData != null
//               ? Setting(userData: userData!)
//               : CircularProgressIndicator(), // Add a loading indicator
//         ],
//       ),
//     );
//   }
// }

// class Setting extends StatelessWidget {
//   final Map<String, dynamic> userData;

//   const Setting({Key? key, required this.userData}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListBody(
//       children: [
//         ListTile(
//           title: Text('Name: ${userData['name']}'),
//         ),
//         ListTile(
//           title: Text('Phone Number: ${userData['phoneNumber']}'),
//         ),
//         ListTile(
//           leading: const Icon(Icons.person_add_alt_sharp),
//           onTap: () {},
//           title: const Text("Invite Friends"),
//         ),
//         ListTile(
//           leading: const Icon(Icons.attach_money_rounded),
//           onTap: () {},
//           title: const Text("Transaction"),
//         ),
//         ListTile(
//           leading: const Icon(Icons.filter_none_outlined),
//           onTap: () {
//             Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Terms()));
//           },
//           title: const Text("Terms and conditions"),
//         ),
//         ListTile(
//           leading: const Icon(Icons.private_connectivity_outlined),
//           onTap: () {
//             Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Privacy()));
//           },
//           title: const Text("Privacy Policy"),
//         ),
//         ListTile(
//           leading: const Icon(Icons.call),
//           onTap: () {
//             _launchPhoneCall('tel:+254739942822');
//           },
//           title: const Text("Get Help"),
//         ),
//         ListTile(
//           leading: const Icon(Icons.email_outlined),
//           onTap: () {},
//           title: const Text("Feedback"),
//         ),
//         ListTile(
//           leading: const Icon(Icons.logout),
//           onTap: () {
//             Navigator.of(context).pushReplacement(
//                 MaterialPageRoute(builder: (context) => LoginScreen()));
//           },
//           title: const Text("Log Out"),
//         ),
//       ],
//     );
//   }
// }

// void _launchPhoneCall(String phoneNumber) async {
//   if (await canLaunch(phoneNumber)) {
//     await launch(phoneNumber);
//   } else {
//     print('Could not launch $phoneNumber');
//   }
// }

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:app/screens/login_screen.dart';
import 'package:app/screens/terms_screen.dart';
import 'package:app/screens/privacy_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late User currentUser;
  Map<String, dynamic>? userData;

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  Future<void> getUserData() async {
    currentUser = FirebaseAuth.instance.currentUser!;
    DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(currentUser.uid)
        .get();

    setState(() {
      userData = userSnapshot.data() as Map<String, dynamic>;
    });
  }

  void _shareAppLink(BuildContext context) {
    Share.share(
      'Check out this app: https://your-app-link.com',
      subject: 'Check out this awesome app!',
    );
  }

  void _shareDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Choose a platform to share:'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('WhatsApp'),
                onTap: () {
                  Navigator.pop(context);
                  _shareOnWhatsApp();
                },
              ),
              ListTile(
                title: const Text('Facebook'),
                onTap: () {
                  Navigator.pop(context);
                  _shareOnFacebook();
                },
              ),
              ListTile(
                title: const Text('SMS'),
                onTap: () {
                  Navigator.pop(context);
                  _shareViaSMS();
                },
              ),
              ListTile(
                title: const Text('Other'),
                onTap: () {
                  Navigator.pop(context);
                  _shareAppLink(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _shareOnWhatsApp() async {
    const whatsappLink = 'https://wa.me/?text=YourMessageHere';
    if (await canLaunch(whatsappLink)) {
      await launch(whatsappLink);
    } else {
      print('Could not launch WhatsApp');
    }
  }

  void _shareOnFacebook() async {
    const facebookLink = 'https://www.facebook.com/your_profile';
    if (await canLaunch(facebookLink)) {
      await launch(facebookLink);
    } else {
      print('Could not launch Facebook');
    }
  }

  void _shareViaSMS() async {
    const smsLink =
        'sms:?body=Check out this awesome app: https://your-app-link.com';
    if (await canLaunch(smsLink)) {
      await launch(smsLink);
    } else {
      print('Could not launch SMS');
    }
  }

  void _logOut(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Log Out'),
          content: const Text('Are you sure you want to log out?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                FirebaseAuth.instance.signOut();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: const Text(
                'Log Out',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }

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
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          SafeArea(
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: userData?['profilePhotoUrl'] != null
                        ? ClipOval(
                            child: Image.network(
                              userData?['profilePhotoUrl'],
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          )
                        : Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(87, 21, 204, 15),
                            ),
                            width: 100,
                            height: 100,
                            child: const Icon(
                              Icons.person,
                              color: Color.fromARGB(216, 22, 13, 191),
                              size: 50,
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Setting(
            userData: userData,
            onInviteFriends: _shareDialog,
            onLogOut: () => _logOut(context),
          ),
        ],
      ),
    );
  }
}

class Setting extends StatelessWidget {
  final Map<String, dynamic>? userData;
  final VoidCallback? onInviteFriends;
  final VoidCallback? onLogOut;

  const Setting(
      {Key? key, required this.userData, this.onInviteFriends, this.onLogOut})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListBody(
      children: [
        ListTile(
          title: Text('Phone Number: ${userData?['phoneNumber'] ?? "N/A"}'),
        ),
        ListTile(
          leading: const Icon(Icons.person_add_alt_sharp),
          onTap: onInviteFriends,
          title: const Text("Invite Friends"),
        ),
        ListTile(
          leading: const Icon(Icons.attach_money_rounded),
          onTap: () {},
          title: const Text("Transaction"),
        ),
        ListTile(
          leading: const Icon(Icons.filter_none_outlined),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Terms()));
          },
          title: const Text("Terms and conditions"),
        ),
        ListTile(
          leading: const Icon(Icons.private_connectivity_outlined),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Privacy()));
          },
          title: const Text("Privacy Policy"),
        ),
        ListTile(
          leading: const Icon(Icons.call),
          onTap: () {
            _launchPhoneCall('tel:+254739942822');
          },
          //         onTap: () {
          //   _launchWhatsAppGroup('https://chat.whatsapp.com/CSc1Mj9x3FRBPL3mtcVA94');
          // },
          title: const Text("Get Help"),
        ),
        ListTile(
          leading: const Icon(Icons.email_outlined),
          onTap: () {},
          title: const Text("Feedback"),
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          onTap: onLogOut,
          title: const Text("Log Out"),
        ),
      ],
    );
  }
}

void _launchPhoneCall(String phoneNumber) async {
  if (await canLaunch(phoneNumber)) {
    await launch(phoneNumber);
  } else {
    print('Could not launch $phoneNumber');
  }
}


// void _launchWhatsAppGroup(String groupLink) async {
//   if (await canLaunch(groupLink)) {
//     await launch(groupLink);
//   } else {
//     print('Could not launch $groupLink');
//   }
// }
