import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
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
      body:  Padding(
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
                      contentPadding: EdgeInsets.all(5),
                      border: OutlineInputBorder(
                          // borderRadius: BorderRadius.circular(400.0),
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
                          contentPadding: EdgeInsets.all(5),
                          border: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(400.0),
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
                          contentPadding: EdgeInsets.all(5),
                          border: OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(400.0),
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
              const  Row(
                  children: [
                    Icon(Icons.password),
                    SizedBox(
                      width: 250,
                      height: 30,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter your Password',
                          contentPadding: EdgeInsets.all(5),
                          border: OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(400.0),
                            borderSide: BorderSide(width: 1),
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Padding(padding:
                      const EdgeInsets.all(5),
                  child: MaterialButton(
                    minWidth: 8,
                    onPressed: () {}, 
                    child: Text('Sign Up'),
                    color: Color.fromARGB(255, 133, 2, 2),
                    textColor: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
