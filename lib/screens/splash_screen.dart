import 'package:app/screens/login_screen.dart';
import 'package:flutter/material.dart';


class Splash extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    
    Future.delayed(
     const Duration(seconds:5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        decoration:const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue,Colors.white],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft)
        ),
        child:const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Icon(Icons.person_2_sharp,
            size: 100,
            weight: 60,
            color: Colors.black,),
         Text('..BEACON HILLS..',
           style: TextStyle(fontStyle: FontStyle.italic,
           fontWeight: FontWeight.bold,
           fontSize: 35),selectionColor: Color.fromARGB(255, 199, 225, 237), ),
          ],
        ),
      ),  
    );
  }
}
