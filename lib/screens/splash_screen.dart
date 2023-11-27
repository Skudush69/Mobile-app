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
        color: Colors.white,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("images/ahgcc logo.png",height: 200, width: 200, ),
          ],
        ),
      ),  
    );
  }
}
