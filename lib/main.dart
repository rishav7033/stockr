import 'package:flutter/material.dart';
import 'splash copy.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xff292b47),
        scaffoldBackgroundColor: Color(0xcc2c2f4e),
      ),
      home: SplashScreen(),
    );
  }
}
