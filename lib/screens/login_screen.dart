import 'package:app/screens/home_screen.dart';
import 'package:app/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BEACON UNIVERSITY'),
        titleSpacing: 00.0,
        centerTitle: true,
        surfaceTintColor: Colors.blueGrey,
        backgroundColor: const Color.fromARGB(255, 133, 2, 2),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        toolbarHeight: 50,
      ),
      backgroundColor: const Color.fromARGB(255, 199, 225, 237),
      body: Padding(
        padding: EdgeInsets.all(70.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 15, 0, 15),
            ),
            const Row(
              children: [
                Icon(Icons.person_2),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter your username',
                        filled: true,
                        fillColor: Colors.white54,
                        hintStyle: TextStyle(
                            fontFamily:
                                AutofillHints.telephoneNumberLocalSuffix),
                        contentPadding: EdgeInsets.all(5),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(400.0)),
                            borderSide: BorderSide(width: 1))),
                    maxLength: 10,
                    minLines: 1,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Icon(Icons.https),
                SizedBox(
                  width: 200,
                  height: 30,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      filled: true,
                      fillColor: Colors.white54,
                      hintStyle: TextStyle(
                          fontFamily: AutofillHints.telephoneNumberLocalSuffix),
                      contentPadding: EdgeInsets.all(5),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(400.0)),
                          borderSide: BorderSide(width: 1)),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(20),
              child: MaterialButton(
                minWidth: 8,
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Successfully Logged In')));
                },
                child: Text('Login'),
                color: const Color.fromARGB(255, 133, 2, 2),
                textColor: Colors.black,
              ),
            ),
            ButtonBar(
              buttonPadding: EdgeInsets.all(8),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              child: Text(
                '*if you dont have an account*',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => SignupScreen()));
                },
                child: const Text(' Create Account')),
          ],
        ),
      ),
    );
  }
}
