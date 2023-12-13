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
import 'dart:io';

import 'package:app/screens/login_screen.dart';
import 'package:app/screens/privacy_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:app/screens/terms_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late User currentUser;
  Map<String, dynamic>? userData;
  File? _image; // Initialize with null

  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();

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
      _nameController.text = userData?['name'] ?? '';
      _phoneNumberController.text = userData?['phoneNumber'] ?? '';
    });
  }

  Future<void> _getImage() async {
    await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('Gallery'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.gallery);
                },
              ),
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Take Photo'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.camera);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().getImage(source: source);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  Future<void> _editProfile() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Profile'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: _phoneNumberController,
                decoration: InputDecoration(labelText: 'Phone Number'),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () async {
                // Implement the logic to save changes to Firestore
                await FirebaseFirestore.instance
                    .collection('users')
                    .doc(currentUser.uid)
                    .update({
                  'name': _nameController.text,
                  'phoneNumber': _phoneNumberController.text,
                });
                Navigator.pop(context);
                getUserData(); // Refresh the data after changes
              },
              child: Text('Save'),
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
                    child: GestureDetector(
                      onTap: _getImage,
                      child: _image != null
                          ? ClipOval(
                              child: Image.file(
                                _image!,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            )
                          : userData?['profilePhotoUrl'] != null
                              ? ClipOval(
                                  child: Image.network(
                                    userData?['profilePhotoUrl'],
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(87, 21, 204, 15), // Placeholder color
                                  ),
                                  width: 100,
                                  height: 100,
                                  child: Icon(
                                    Icons.person,
                                    color:Color.fromARGB(216, 22, 13, 191),
                                    size: 50,
                                  ),
                                ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _editProfile,
                    child: Text('Edit Profile'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Setting(userData: userData),
        ],
      ),
    );
  }
}

class Setting extends StatelessWidget {
  final Map<String, dynamic>? userData;

  const Setting({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListBody(
      children: [
        ListTile(
          title: Text('Name: ${userData?['name'] ?? "N/A"}'),
        ),
        ListTile(
          title: Text('Phone Number: ${userData?['phoneNumber'] ?? "N/A"}'),
        ),
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
