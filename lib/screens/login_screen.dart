// import 'package:app/screens/home_screen.dart';
// import 'package:app/screens/signup_screen.dart';
// import 'package:flutter/material.dart';

// class LoginScreen extends StatefulWidget {
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: EdgeInsets.all(30.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'LOGIN',
//               style: TextStyle(
//                   fontSize: 50, color: Color.fromARGB(216, 22, 13, 191)),
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             const Padding(
//               padding: EdgeInsets.fromLTRB(20, 15, 0, 15),
//             ),
//             const Row(
//               children: [
//                 Icon(Icons.person_2),
//                 SizedBox(
//                   width: 250,
//                   height: 35,
//                   child: TextField(
//                     decoration: InputDecoration(
//                         labelText: 'Name',
//                         hintText: 'Enter your Name',
//                         filled: true,
//                         fillColor: Color.fromARGB(87, 21, 204, 15),
//                         contentPadding: EdgeInsets.all(5),
//                         border: OutlineInputBorder(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(400.0)),
//                             borderSide: BorderSide(width: 1))),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             const Row(
//               children: [
//                 Icon(Icons.mail),
//                 SizedBox(
//                   width: 250,
//                   height: 35,
//                   child: TextField(
//                     decoration: InputDecoration(
//                         labelText: 'Email',
//                         hintText: 'Enter your Email',
//                         filled: true,
//                         fillColor: Color.fromARGB(87, 21, 204, 15),
//                         contentPadding: EdgeInsets.all(5),
//                         border: OutlineInputBorder(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(400.0)),
//                             borderSide: BorderSide(width: 1))),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 25),
//             const Row(
//               children: [
//                 Icon(Icons.https),
//                 SizedBox(
//                   width: 250,
//                   height: 35,
//                   child: TextField(
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       labelText: 'Password',
//                       hintText: 'Enter your password',
//                       filled: true,
//                       fillColor: Color.fromARGB(87, 21, 204, 15),
//                       contentPadding: EdgeInsets.all(5),
//                       border: OutlineInputBorder(
//                           borderRadius:
//                               BorderRadius.all(Radius.circular(400.0)),
//                           borderSide: BorderSide(width: 1)),
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: MaterialButton(
//                 minWidth: 8,
//                 onPressed: () {
//                   Navigator.of(context).pushReplacement(
//                       MaterialPageRoute(builder: (context) => HomeScreen()));
//                   ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text('Successfully Logged In')));
//                 },
//                 child: Text('SIGN IN'),
//                 color: const Color.fromARGB(216, 22, 13, 191),
//                 textColor: Colors.white,
//               ),
//             ),
//             ButtonBar(
//               buttonPadding: EdgeInsets.all(8),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const SizedBox(
//               child: Text('*if you dont have an account*',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(color: Color.fromARGB(255, 4, 155, 12))),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pushReplacement(
//                       MaterialPageRoute(builder: (context) => SignupScreen()));
//                 },
//                 child: const Text(
//                   ' Create Account',
//                   style: TextStyle(color: Color.fromARGB(216, 22, 13, 191)),
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
// }


//From chart

// import 'package:app/screens/home_screen.dart';
// import 'package:app/screens/signup_screen.dart';
// import 'package:flutter/material.dart';

// class LoginScreen extends StatefulWidget {
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController phoneNumberController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   Future<void> loginUser() async {
//     try {
//       // TODO: Implement Firebase Authentication logic here

//       // Example: Check if name, phone number, and password are valid
//       if (nameController.text.isNotEmpty &&
//           phoneNumberController.text.isNotEmpty &&
//           passwordController.text.isNotEmpty) {
//         // TODO: Authenticate the user using Firebase Authentication
//         // For example:
//         // await FirebaseAuth.instance.signInWithEmailAndPassword(
//         //   email: nameController.text.trim(),
//         //   password: passwordController.text.trim(),
//         // );

//         Navigator.of(context).pushReplacement(
//           MaterialPageRoute(builder: (context) => HomeScreen()),
//         );

//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Successfully Logged In')),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Please enter all fields')),
//         );
//       }
//     } catch (e) {
//       print('Error logging in: $e');
//       // Handle errors, e.g., display an error message to the user
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.all(30.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               'LOGIN',
//               style: TextStyle(
//                 fontSize: 50,
//                 color: Color.fromARGB(216, 22, 13, 191),
//               ),
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             Row(
//               children: [
//                 const Icon(Icons.person),
//                 SizedBox(
//                   width: 250,
//                   height: 35,
//                   child: TextField(
//                     controller: nameController,
//                     decoration: const InputDecoration(
//                       labelText: 'Name',
//                       hintText: 'Enter your Name',
//                       filled: true,
//                       fillColor: Color.fromARGB(87, 21, 204, 15),
//                       contentPadding: EdgeInsets.all(5),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(400.0)),
//                         borderSide: BorderSide(width: 1),
//                       ),
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//             Row(
//               children: [
//                 const Icon(Icons.phone),
//                 SizedBox(
//                   width: 250,
//                   height: 35,
//                   child: TextField(
//                     controller: phoneNumberController,
//                     decoration: const InputDecoration(
//                       labelText: 'Phone Number',
//                       hintText: 'Enter your Phone Number',
//                       filled: true,
//                       fillColor: Color.fromARGB(87, 21, 204, 15),
//                       contentPadding: EdgeInsets.all(5),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(400.0)),
//                         borderSide: BorderSide(width: 1),
//                       ),
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 25),
//             Row(
//               children: [
//                 const Icon(Icons.https),
//                 SizedBox(
//                   width: 250,
//                   height: 35,
//                   child: TextField(
//                     controller: passwordController,
//                     obscureText: true,
//                     decoration: const InputDecoration(
//                       labelText: 'Password',
//                       hintText: 'Enter your password',
//                       filled: true,
//                       fillColor: Color.fromARGB(87, 21, 204, 15),
//                       contentPadding: EdgeInsets.all(5),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(400.0)),
//                         borderSide: BorderSide(width: 1),
//                       ),
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: MaterialButton(
//                 minWidth: 8,
//                 onPressed: loginUser,
//                 child: const Text('SIGN IN'),
//                 color: const Color.fromARGB(216, 22, 13, 191),
//                 textColor: Colors.white,
//               ),
//             ),
//             const ButtonBar(
//               buttonPadding: EdgeInsets.all(8),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const SizedBox(
//               child: Text(
//                 '*if you dont have an account*',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Color.fromARGB(255, 4, 155, 12)),
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(builder: (context) => SignupScreen()),
//                 );
//               },
//               child: const Text(
//                 ' Create Account',
//                 style: TextStyle(color: Color.fromARGB(216, 22, 13, 191)),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


//From Chart 2

import 'package:app/screens/home_screen.dart';
import 'package:app/screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> loginUser() async {
    try {
      // TODO: Implement Firebase Authentication logic here

      // Example: Check if email and password are valid
      if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
       //TODO: Authenticate the user using Firebase Authentication
        // For example:
         await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
         );

        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Successfully Logged In')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please enter email and password')),
        );
      }
    } catch (e) {
      print('Error logging in: $e');
      // Handle errors, e.g., display an error message to the user
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'LOGIN',
              style: TextStyle(
                fontSize: 50,
                color: Color.fromARGB(216, 22, 13, 191),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const Icon(Icons.person),
                SizedBox(
                  width: 250,
                  height: 35,
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      hintText: 'Enter your Name',
                      filled: true,
                      fillColor: Color.fromARGB(87, 21, 204, 15),
                      contentPadding: EdgeInsets.all(5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(400.0)),
                        borderSide: BorderSide(width: 1),
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Icon(Icons.mail),
                SizedBox(
                  width: 250,
                  height: 35,
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your Email',
                      filled: true,
                      fillColor: Color.fromARGB(87, 21, 204, 15),
                      contentPadding: EdgeInsets.all(5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(400.0)),
                        borderSide: BorderSide(width: 1),
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                const Icon(Icons.https),
                SizedBox(
                  width: 250,
                  height: 35,
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      filled: true,
                      fillColor: Color.fromARGB(87, 21, 204, 15),
                      contentPadding: EdgeInsets.all(5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(400.0)),
                        borderSide: BorderSide(width: 1),
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: MaterialButton(
                minWidth: 8,
                onPressed: loginUser,
                child: const Text('SIGN IN'),
                color: const Color.fromARGB(216, 22, 13, 191),
                textColor: Colors.white,
              ),
            ),
            const ButtonBar(
              buttonPadding: EdgeInsets.all(8),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              child: Text(
                '*if you dont have an account*',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromARGB(255, 4, 155, 12)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              },
              child: const Text(
                ' Create Account',
                style: TextStyle(color: Color.fromARGB(216, 22, 13, 191)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
  ));
}
