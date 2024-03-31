import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/screens/login_screen.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController surNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _obscureConfirmPassword = !_obscureConfirmPassword;
    });
  }

  Future<void> registerUser() async {
    if (firstNameController.text.isEmpty ||
        surNameController.text.isEmpty ||
        phoneNumberController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        confirmPasswordController.text.isEmpty) {
      showFieldEmptyDialog();
      return;
    }

    if (passwordController.text != confirmPasswordController.text) {
      showPasswordMismatchDialog();
      return;
    }

    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      User? user = userCredential.user;

      Map<String, dynamic> userData = {
        'First Name': firstNameController.text.trim(),
        'Surname': surNameController.text.trim(),
        'phoneNumber': phoneNumberController.text.trim(),
      };

      await FirebaseFirestore.instance
          .collection('users')
          .doc(user?.uid)
          .set(userData);

      await user?.sendEmailVerification();

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Successfully Created an Account')),
      );
    } on FirebaseAuthException catch (e) {
      print('Error creating user: $e');
      if (e.code == 'email-already-in-use') {
        showEmailInUseDialog();
      } else {
        // Handle other errors
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<User?> _handleSignIn() async {
    try {
      GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final UserCredential authResult =
          await _auth.signInWithCredential(credential);
      final User? user = authResult.user;

      return user;
    } catch (error) {
      print(error);
      return null;
    }
  }

  void showEmailInUseDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content:
              Text('This email address is already in use by another account.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void showFieldEmptyDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text('Please fill in all the fields.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void showPasswordMismatchDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text('Passwords do not match. Please re-enter.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'SIGN UP',
              style: TextStyle(
                  fontSize: 40, color: Color.fromARGB(216, 22, 13, 191)),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Icon(Icons.person),
                SizedBox(
                  width: 250,
                  height: 35,
                  child: TextField(
                    controller: firstNameController,
                    decoration: const InputDecoration(
                      labelText: 'First Name',
                      hintText: 'Enter your first name',
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
                const Icon(Icons.person),
                SizedBox(
                  width: 250,
                  height: 35,
                  child: TextField(
                    controller: surNameController,
                    decoration: const InputDecoration(
                      labelText: 'Surname',
                      hintText: 'Enter your surname',
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
            Column(
              children: [
                Row(
                  children: [
                    const Icon(Icons.phone),
                    SizedBox(
                      width: 250,
                      height: 35,
                      child: TextField(
                        controller: phoneNumberController,
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: const InputDecoration(
                          labelText: 'Phone Number',
                          hintText: 'Enter your Phone Number',
                          filled: true,
                          fillColor: Color.fromARGB(87, 21, 204, 15),
                          contentPadding: EdgeInsets.all(5),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(400.0)),
                            borderSide: BorderSide(width: 1),
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 25),
            Column(
              children: [
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
                          hintText: 'Enter your Email Address',
                          filled: true,
                          fillColor: Color.fromARGB(87, 21, 204, 15),
                          contentPadding: EdgeInsets.all(5),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(400.0)),
                            borderSide: BorderSide(width: 1),
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 25),
            Column(children: [
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
                        hintText: 'Enter your Password',
                        filled: true,
                        fillColor: Color.fromARGB(87, 21, 204, 15),
                        hintStyle: TextStyle(
                          fontFamily: AutofillHints.telephoneNumberLocalSuffix,
                        ),
                        contentPadding: EdgeInsets.all(5),
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(400.0)),
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
            ]),
            const SizedBox(height: 25),
            Column(children: [
              Row(
                children: [
                  const Icon(Icons.https),
                  SizedBox(
                    width: 250,
                    height: 35,
                    child: TextField(
                      controller: confirmPasswordController,
                      obscureText: _obscureConfirmPassword,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        hintText: 'Re-enter your Password',
                        filled: true,
                        fillColor: Color.fromARGB(87, 21, 204, 15),
                        hintStyle: TextStyle(
                          fontFamily: AutofillHints.telephoneNumberLocalSuffix,
                        ),
                        contentPadding: EdgeInsets.all(5),
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(400.0)),
                          borderSide: BorderSide(width: 1),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureConfirmPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: _toggleConfirmPasswordVisibility,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ]),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(5),
              child: MaterialButton(
                minWidth: 8,
                onPressed: registerUser,
                child: const Text('REGISTER'),
                color: const Color.fromARGB(216, 22, 13, 191),
                textColor: Colors.white,
              ),
            ),
            const ButtonBar(
              buttonPadding: EdgeInsets.all(4),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              child: Text(
                '*if you have an account*',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromARGB(255, 4, 155, 12)),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: const Text(
                ' Log in',
                style: TextStyle(color: Color.fromARGB(216, 22, 13, 191)),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton.icon(
              onPressed: () async {
                User? user = await _handleSignIn();
                if (user != null) {
                  // Successfully signed in with Google
                  // You can add your logic here
                } else {
                  // Failed to sign in with Google
                  // You can add your error handling logic here
                }
              },
              icon: Icon(Icons.login, color: Colors.black),
              label: Text('Sign up with Google',
                  style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(primary: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
