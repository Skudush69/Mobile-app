import 'package:app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Announce extends StatefulWidget {
  const Announce({super.key});

  @override
  State<Announce> createState() => _AnnounceState();
}

class _AnnounceState extends State<Announce> {
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
     
    );
  }
}
