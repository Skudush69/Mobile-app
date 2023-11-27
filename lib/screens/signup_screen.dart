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
      backgroundColor:Colors.white,
      body: 
      Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('SIGN UP',
          style: TextStyle(fontSize: 50,color: Color.fromARGB(216, 22, 13, 191)),
          ),
          const SizedBox(
            height: 75,
          ),
            const Row(
              children: [
                Icon(Icons.person),
                SizedBox(
                  width: 250,
                  height: 35,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      hintText: 'Enter your name',
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
            const Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(
                      width: 250,
                      height: 35,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          hintText: 'Enter your Phone Number',
                          filled: true,
                          fillColor:Color.fromARGB(87, 21, 204, 15),
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
                      height: 35,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter your Email Address',
                          filled: true,
                          fillColor:Color.fromARGB(87, 21, 204, 15),
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
            SizedBox(height: 25),
            Column(
              children: [
                const Row(
                  children: [
                    Icon(Icons.https),
                    SizedBox(
                      width: 250,
                      height: 35,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter your Password',
                          filled: true,
                          fillColor:Color.fromARGB(87, 21, 204, 15),
                          hintStyle: TextStyle(
                              fontFamily:
                                  AutofillHints.telephoneNumberLocalSuffix),
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
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: MaterialButton(
                    minWidth: 8,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Successfully Created an Account')));
                    },
                    child: Text('REGISTER'),
                    color: Color.fromARGB(216, 22, 13, 191),
                    textColor: Colors.white,
                  ),
                ),
                ButtonBar(
                  buttonPadding: EdgeInsets.all(8),
                ),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  child: Text(
                    '*if you have an account*',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color.fromARGB(255, 1, 70, 4)),
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
                    child: const Text(
                      ' Log in',
                      style: TextStyle(color: Color.fromARGB(216, 22, 13, 191)),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
