// import 'package:app/screens/home_screen.dart';
// import 'package:app/screens/signup_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class LoginScreen extends StatefulWidget {
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn googleSignIn = GoogleSignIn();

//    bool _obscurePassword = true;

//     void _togglePasswordVisibility() {
//     setState(() {
//       _obscurePassword = !_obscurePassword;
//     });
//   }

//   Future<void> loginUser() async {
//      try {
//     // Check if name, email, and password are provided
//     if (emailController.text.isEmpty ||
//         passwordController.text.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Please fill in all the fields')),
//       );
//       return; // Stop execution if any field is empty
//     }

//       // TODO: Implement Firebase Authentication logic here

//       // Example: Check if email and password are valid
//       if (emailController.text.isNotEmpty &&
//           passwordController.text.isNotEmpty) {
//         //TODO: Authenticate the user using Firebase Authentication
//         // For example:
//         await FirebaseAuth.instance.signInWithEmailAndPassword(
//           email: emailController.text.trim(),
//           password: passwordController.text.trim(),
//         );

//          // Access the user data
//     //      final user = FirebaseAuth.instance.currentUser;
//     //      if (user == null || !user.emailVerified) {
//     //   ScaffoldMessenger.of(context).showSnackBar(
//     //     const SnackBar(content: Text('Authentication failed. Please verify your email.')),
//     //   );
//     //   return;
//     // }

//         Navigator.of(context).pushReplacement(
//           MaterialPageRoute(builder: (context) => HomeScreen()),
//         );

//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Successfully Logged In')),
//         );
//       }

//       else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Please enter email and password')),
//         );
//       }

//   //   } catch (e) {
//   //     print('Error logging in: $e');
//   //     // Handle errors, e.g., display an error message to the user
//   //   }
//   // }
//   } catch (e) {
//     print('Error logging in: $e');
//     // Handle errors, e.g., display an error message to the user
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text('Error logging in. Please try again later.')),
//     );
//   }
// }

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
//             const SizedBox(height: 20),
//             Row(
//               children: [
//                 const Icon(Icons.mail),
//                 SizedBox(
//                   width: 250,
//                   height: 35,
//                   child: TextField(
//                     controller: emailController,
//                     decoration: const InputDecoration(
//                       labelText: 'Email',
//                       hintText: 'Enter your Email',
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
//                     obscureText: _obscurePassword,
//                     decoration:  InputDecoration(
//                       labelText: 'Password',
//                       hintText: 'Enter your password',
//                       filled: true,
//                       fillColor: Color.fromARGB(87, 21, 204, 15),
//                       contentPadding: EdgeInsets.all(5),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(400.0)),
//                         borderSide: BorderSide(width: 1),
//                       ),
//                       suffixIcon: IconButton(
//                           icon: Icon(
//                             _obscurePassword
//                                 ? Icons.visibility
//                                 : Icons.visibility_off,
//                           ),
//                           onPressed: _togglePasswordVisibility,
//                         ),
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 15,),
//              const SizedBox(
//               child: Text(
//                 '*Forgot Password*',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color:Color.fromARGB(255, 123, 10, 2)),
//               ),
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
//             ElevatedButton(
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

// void main() {
//   runApp(MaterialApp(
//     home: LoginScreen(),
//   ));
// }

import 'package:app/screens/home_screen.dart';
import 'package:app/screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obscurePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  Future<void> loginUser() async {
    try {
      if (emailController.text.isEmpty || passwordController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please fill in all the fields')),
        );
        return;
      }

      // Authenticate the user using Firebase Authentication
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      // Access the user data
      final user = FirebaseAuth.instance.currentUser;
      if (user == null || !user.emailVerified) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content:
                  Text('Authentication failed. Please verify your email.')),
        );
        return;
      }

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Successfully Logged In')),
      );
    } catch (e) {
      print('Error logging in: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Error logging in. Please try again later.')),
      );
    }
  }

  void handleForgotPassword() {
    // Implement your forgot password logic here
    // For example:
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPasswordScreen()));
  }

  Future<void> _handleGoogleSignIn() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        final UserCredential authResult =
            await FirebaseAuth.instance.signInWithCredential(credential);
        final User? user = authResult.user;

        // Check if user's email matches any registered email in your database
        if (user != null) {
          // Proceed with login
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        } else {
          // Handle invalid login attempt
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Sign-in failed. Please try again.')),
          );
        }
      } else {
        // Handle Google Sign-In cancellation
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Sign-in canceled')),
        );
      }
    } catch (e) {
      print('Error signing in with Google: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Sign-in failed. Please try again later.')),
      );
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
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      filled: true,
                      fillColor: Color.fromARGB(87, 21, 204, 15),
                      contentPadding: EdgeInsets.all(5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(400.0)),
                        borderSide: BorderSide(width: 1),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: _togglePasswordVisibility,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: handleForgotPassword,
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Color.fromARGB(255, 123, 10, 2)),
              ),
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
            ElevatedButton(
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
            const SizedBox(height: 20),
            // Google Sign-In Button
            ElevatedButton.icon(
              onPressed: _handleGoogleSignIn,
              icon: Icon(
                Icons.login,
                color: Colors.black,
              ),
              label: Text(
                'Sign in with Google',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.white),
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
