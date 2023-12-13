// import 'package:flutter/material.dart';

// class Announce extends StatefulWidget {
//   const Announce({super.key});

//   @override
//   State<Announce> createState() => _AnnounceState();
// }

// class _AnnounceState extends State<Announce> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        appBar: AppBar(
//         title: const Text('ANNOUNCEMENTS'),
//         titleSpacing: 00.0,
//         centerTitle: true,
//         backgroundColor: Color.fromARGB(87, 21, 204, 15),
//         titleTextStyle: const TextStyle(
//           color: Color.fromARGB(216, 22, 13, 191),
//           fontSize: 25,
//         ),
//         toolbarHeight: 50,
//       ),
     
//     );
//   }
// }


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
        title: const Text('ANNOUNCEMENTS'),
        titleSpacing: 00.0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(87, 21, 204, 15),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(216, 22, 13, 191),
          fontSize: 25,
        ),
        toolbarHeight: 50,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PowerPointCard(
              title: 'Welcoming Guests',
              subtitle: 'Creating a Warm and Inclusive Environment',
              imagePath: 'images/ahgcc logo.png', // Replace with your image path
            ),
            SizedBox(height: 16),
            PowerPointCard(
              title: 'Oncoming Events',
              subtitle: 'Exciting Activities in the Near Future',
              imagePath: 'images/ahgcc logo.png', // Replace with your image path
            ),
            SizedBox(height: 16),
            PowerPointCard(
              title: 'Strategic Plans',
              subtitle: 'Building the Future Together',
              imagePath: 'images/ahgcc logo.png', // Replace with your image path
            ),
            // Add more PowerPointCard instances for additional slides
          ],
        ),
      ),
    );
  }
}

class PowerPointCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath; // Path to the PowerPoint slide image

  PowerPointCard({
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
            child: Image.asset(
              imagePath,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Announce(),
  ));
}

