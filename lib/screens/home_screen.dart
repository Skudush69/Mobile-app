//import 'dart:math';
import 'package:app/screens/activity_screen.dart';
import 'package:app/screens/fund_screen.dart';
import 'package:app/screens/pay_screen.dart';
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
        title: const Text('HOME'),
        titleSpacing: 00.0,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(87, 21, 204, 15),
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
            const SizedBox(height: 20,),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    hoverColor:Colors.grey,
                    color:Colors.black,
                    
                     icon: const Icon(
                      Icons.person,
                      size: 60,
                     ), onPressed: () {  Navigator.of(context).push(MaterialPageRoute(builder:(context) => const Profile())); },),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            //  ListTile(
            //   title: const Text(
            //     'PROFILE',
            //     style: TextStyle(fontSize: 16.5,),
            //   ),
            //   textColor: Color.fromARGB(216, 22, 13, 191),
            //   onTap: () {
            //     Navigator.of(context).push(
            //         MaterialPageRoute(builder: (context) => Profile()));
            //   },
            // ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            ListTile(
              title: const Text(
                'ANNOUNCEMENTS',
                style: TextStyle(fontSize: 16.5,),
              ),
              textColor: const Color.fromARGB(216, 22, 13, 191),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Announce()));
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
              textColor: const Color.fromARGB(216, 22, 13, 191),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Activity()));
              },
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            ListTile(
              title: const Text(
                'ABOUT US',
                style: TextStyle(fontSize: 16.5,),
              ),
              textColor: const Color.fromARGB(216, 22, 13, 191),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const About()));
              },
            ),
             const Divider(
              height: 5,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body:SingleChildScrollView(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 30,),
            CardWidget(
              title: 'YOUTUBE',
              description: 'Explore a transformative journey through our videos, where faith comes alive in engaging sermons, soul-stirring worship, and a vibrant community. Join us online for a spiritual experience that transcends boundaries, fostering connection and purpose. Subscribe now to be part of a diverse congregation sharing love, compassion, and the joy of spiritual growth.',
              icon: Icons.play_circle_outline,
              onTap: () {
                // Add YouTube card action
              },
            ),
            const SizedBox(height: 30),
            CardWidget(
              title: 'FUNDS',
              description: 'Empower positive change and be a catalyst for impact by contributing to our cause. Your generous support fuels initiatives that make a tangible difference in the lives of those in need. Join us in making a lasting impact—your contribution transforms aspirations into reality. Donate today and be a driving force for positive change',
              icon: Icons.monetization_on,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Fund()));
                // Add Fund card action
              },
            ),
            const SizedBox(height: 30),
            CardWidget(
              title: 'PAYBILL',
              description: 'Thank you for choosing to support our mission through your generous contribution via paybill. To guide you through the process, simply use the provided paybill number to seamlessly make your donation. Feel free to reach out if you encounter any challenges during the transaction. ',
              icon: Icons.payment,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Pay()));
                // Add Paybill card action
              },
            ),
            const SizedBox(height: 30,),
          ],
        ),
    )
    );
  }
}

class CardWidget extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onTap;

  CardWidget({
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            ListTile(
              title: Text(title),
              subtitle: Text(description),
              leading: Icon(icon, size: 50),
            ),
           
          ],
        ),
      ),
    );
  }
}