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
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(70.0),
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('LOGIN',
          style: TextStyle(fontSize: 50,color: Color.fromARGB(216, 22, 13, 191)),
          ),
          const SizedBox(
            height: 50,
          ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 15, 0, 15),
            ),
            const Row(
              children: [
                Icon(Icons.person_2),
                SizedBox(
                  width: 200,
                  height: 35,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Name',
                        hintText: 'Enter your Name',
                        filled: true,
                        fillColor: Color.fromARGB(87, 21, 204, 15),
                        contentPadding: EdgeInsets.all(5),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(400.0)),
                            borderSide: BorderSide(width: 1))),
                    
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
             SizedBox(height: 25),
              const Row(
              children: [
                Icon(Icons.phone),
                SizedBox(
                  width: 200,
                  height: 35,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Phone Number',
                        hintText: 'Enter your Phone Number',
                        filled: true,
                        fillColor: Color.fromARGB(87, 21, 204, 15),
                        contentPadding: EdgeInsets.all(5),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(400.0)),
                            borderSide: BorderSide(width: 1))
                            ),
                    
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            const Row(
              children: [
                Icon(Icons.https),
                SizedBox(
                  width: 200,
                  height: 35,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      filled: true,
                      fillColor: Color.fromARGB(87, 21, 204, 15),
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
                child: Text('SIGN IN'),
                color: const Color.fromARGB(216, 22, 13, 191),
                textColor: Colors.white,
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
                style: TextStyle(color: Color.fromARGB(255, 4, 155, 12))
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
                child: const Text(' Create Account',
                style: TextStyle(color: Color.fromARGB(216, 22, 13, 191)),)),
          ],
        ),
      ),
    );
  }
}
