import 'dart:async';
import 'login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.amber,
                gradient: LinearGradient(
                  colors:[ new Color(0xff6094e8), new Color(0xffde5cbc)],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                   ),
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(

                child: Image.asset('images/logo_transparent.png',
                width: MediaQuery.of(context).size.width*1,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                  colors:[ new Color(0xff6094e8), new Color(0xffde5cbc)],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('images/logo_transparent.png'),
                //   radius: 75.0, 
                ),
              ),
              
              
            ],
          )  

        ],
      ),
    );
  }
}