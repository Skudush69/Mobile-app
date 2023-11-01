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
          gradient: LinearGradient(colors: [Color.fromARGB(255, 133, 2, 2),Color.fromARGB(246, 1, 15, 26),Color.fromARGB(246, 1, 15, 26),Color.fromARGB(255, 133, 2, 2)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter)
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("images/logo.jpeg",height: 200, width: 200, ),
          ],
        ),
      ),  
    );
  }
}
