import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text("BEACON"),
        titleSpacing: 00.0,
        centerTitle: true,
        surfaceTintColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 133, 2, 2),
        titleTextStyle: const TextStyle(color: Colors.white,
        fontSize: 15,
        ),
        toolbarHeight: 50,
      ),

      backgroundColor: Color.fromARGB(255, 199, 225, 237),

      body: const Padding(padding: EdgeInsets.all(5),
      child: Column(
        children: [
          SizedBox(
           child: Text.rich(
            TextSpan(text:'Hello there, Welcome to the BEACON HILLS .This is a new Start to an Infinite chances of changing The World for the BETTER',)
            ),
          ),
        ],
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.white, iconSize: 20, onTap:(value) => log(5),
      items:const [ BottomNavigationBarItem(icon: Icon(Icons.home),
      label: 'HOME',
       backgroundColor: Colors.black),
       BottomNavigationBarItem(icon: Icon(Icons.message),
      label: 'CHAT',
       backgroundColor: Colors.black),
       BottomNavigationBarItem(icon: Icon(Icons.settings),
      label: 'SETTINGS',
       backgroundColor: Colors.black),
       BottomNavigationBarItem(icon: Icon(Icons.person_2),
      label: 'PROFILE',
       backgroundColor: Colors.black),
       ],),
      );

  }
}