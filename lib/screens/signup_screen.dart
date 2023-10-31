import 'package:app/screens/home_screen.dart';
import 'package:app/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BEACON UNIVERSITY'),
        titleSpacing: 00.0,
        centerTitle: true,
        surfaceTintColor: Colors.blueGrey,
        backgroundColor: Color.fromARGB(255, 133, 2, 2),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        toolbarHeight: 60,
      ),
      backgroundColor: Color.fromARGB(255, 199, 225, 237),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            const Row(
              children: [
                Icon(Icons.person),
                SizedBox(
                  width: 250,
                  height: 30,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'First Name',
                      hintText: 'Enter your first name',
                      filled: true,
                      fillColor: Colors.white54,
                      contentPadding: EdgeInsets.all(5),
                      border: OutlineInputBorder(
                           borderRadius: BorderRadius.all(Radius.circular(400.0)),
                          borderSide: BorderSide(width: 1)),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            const Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(
                      width: 250,
                      height: 30,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Surname',
                          hintText: 'Enter your surname',
                          filled: true,
                          fillColor: Colors.white54,
                          contentPadding: EdgeInsets.all(5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(400.0)),
                              borderSide: BorderSide(width: 1)),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 25),
            const Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.mail),
                    SizedBox(
                      width: 250,
                      height: 30,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter your Email Address',
                          filled: true,
                          fillColor: Colors.white54,
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
              ],
            ),
            SizedBox(height: 25),
            Column(
              children: [
                const Row(
                  children: [
                    Icon(Icons.https),
                    SizedBox(
                      width: 250,
                      height: 30,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter your Password',
                          filled: true,
                          fillColor: Colors.white54,
                          hintStyle: TextStyle(
                              fontFamily:
                                  AutofillHints.telephoneNumberLocalSuffix),
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
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: MaterialButton(
                    minWidth: 8,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                          ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Successfully Created an Account')));
                    },
                    child: Text('Sign Up'),
                    color: Color.fromARGB(255, 133, 2, 2),
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
                    '*if you have an account*',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                    child: const Text(' Log in to Existing account')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
