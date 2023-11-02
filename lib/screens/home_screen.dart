import 'dart:math';

import 'package:app/screens/login_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BEACON HILLS"),
        titleSpacing: 00.0,
        centerTitle: true,
        surfaceTintColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 133, 2, 2),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        toolbarHeight: 50,
      ),
      drawer: Drawer(backgroundColor: Color.fromARGB(255, 133, 2, 2),
        width: 150,
        child: ListView(
          children: [
            ListTile(
              tileColor: const Color.fromARGB(255, 133, 2, 2),
              title: const Text('HOME'),textColor: Colors.white70,
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
            const ListTile(
              tileColor: Color.fromARGB(255, 133, 2, 2),
              title: Text('PROFILE'),textColor: Colors.white70,),
              const ListTile(
              tileColor: Color.fromARGB(255, 133, 2, 2),
              title: Text('SETTINGS'),textColor: Colors.white70,),
              const ListTile(
              tileColor: Color.fromARGB(255, 133, 2, 2),
              title: Text('CONTACT US'),textColor: Colors.white70,),
              const ListTile(
              tileColor: Color.fromARGB(255, 133, 2, 2),
              title: Text('ABOUT US'),textColor: Colors.white70,),

          ],
        ),
      ),
      backgroundColor: Color.fromARGB(246, 1, 15, 26),

      body: const Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            SizedBox(
              child: Text.rich(TextSpan(
                text:
                    'Hello there, Welcome to the BEACON HILLS .This is a new Start to an Infinite chances of changing The World for the BETTER',
                    style: TextStyle(color: Colors.white70)
              )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: const Color.fromARGB(255, 133, 2, 2), iconSize: 20, onTap:(value) => log(5),
      items:const [ BottomNavigationBarItem(icon: Icon(Icons.home),
      label: 'HOME',
       backgroundColor: Colors.black),
       BottomNavigationBarItem(icon: Icon(Icons.message),
      label: 'CHAT'),
       ],),
    );
  }
}
