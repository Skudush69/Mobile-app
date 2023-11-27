import 'dart:math';

import 'package:app/screens/login_screen.dart';
import 'package:app/screens/logout_screen.dart';
import 'package:app/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:app/screens/announce_screen.dart';
import 'package:app/screens/profile_screen.dart';
import 'package:app/screens/about_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AHGCC'),
        titleSpacing: 00.0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(87, 21, 204, 15),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(216, 22, 13, 191),
          fontSize: 25,
        ),
        toolbarHeight: 50,
      ),
      drawer: Drawer(
        backgroundColor: Colors.green,
        width: 190,
        child: ListView(
          children: [
             ListTile(
              title: const Text(
                'PROFILE',
                style: TextStyle(fontSize: 16.5,),
              ),
              textColor: Color.fromARGB(216, 22, 13, 191),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Profile()));
              },
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            ListTile(
              title: const Text(
                'ANNOUNCEMENTS',
                style: TextStyle(fontSize: 16.5,),
              ),
              textColor: Color.fromARGB(216, 22, 13, 191),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Announce()));
              },
            ),
             const Divider(
              height: 5,
              color: Colors.black,
            ),
             ListTile(
              title: const Text(
                'ACTIVITY',
                style: TextStyle(fontSize: 16.5,),
              ),
              textColor: Color.fromARGB(216, 22, 13, 191),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => About()));
              },
            ),
             const Divider(
              height: 5,
              color: Colors.black,
            ),
             ListTile(
              title: const Text(
                'LOG OUT',
                style: TextStyle(fontSize: 16.5,),
              ),
              textColor: Color.fromARGB(216, 22, 13, 191),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ), const Divider(
              height: 5,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: Card(
        color: Colors.green,
        elevation: 20,
       child: Column(children:[SizedBox(height: 50,width: 50,)])
      )
      
    );
    //     ],
    //   ),
    // ),
    // bottomNavigationBar: BottomNavigationBar(
    //   backgroundColor: const Color.fromARGB(255, 133, 2, 2),
    //   iconSize: 20,
    //   items: const [
    //     BottomNavigationBarItem(
    //         icon: Icon(Icons.home),
    //         label: 'HOME',
    //         backgroundColor: Colors.black),
    //     BottomNavigationBarItem(icon: Icon(Icons.message), label: 'CHAT'),
    //   ],
    // ),
    // );
  }
}
