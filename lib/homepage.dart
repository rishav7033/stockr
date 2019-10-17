import 'package:flutter/material.dart';
import 'package:stockr/AUTOCORPS/autocorpspage.dart';
import 'package:stockr/Bank/bank.dart';
import 'package:stockr/Fashion/fashion.dart';
import 'package:stockr/Food/food.dart';
import 'IT/itpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'STOCK₹',
          style: TextStyle(
            fontFamily: 'Orbitron',
            color: Colors.blueAccent,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 24),
                child: Container(
                  width: double.infinity,
                  child: Text(
                    'STOCKS',
                    style: TextStyle(
                      fontFamily: 'Freder',
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.blueGrey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ITCompanies()));
                  });
                },
                child: Container(
                  child: Center(
                    child: Text(
                      'IT',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Freder',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  margin: EdgeInsets.all(15),
                  height: 100.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xcc49547A),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AutoCorps()));
                  });
                },
                child: Container(
                  child: Center(
                    child: Text(
                      'AUTOCORPS',
                      style: TextStyle(fontSize: 30, fontFamily: 'Freder'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  margin: EdgeInsets.all(15),
                  height: 100.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xcc49547A),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Food()));
                  });
                },
                child: Container(
                  child: Center(
                    child: Text(
                      'FOOD',
                      style: TextStyle(fontSize: 30, fontFamily: 'Freder'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  margin: EdgeInsets.all(15),
                  height: 100.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xcc49547A),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Bank()));
                  });
                },
                child: Container(
                  child: Center(
                    child: Text(
                      'BANKING',
                      style: TextStyle(fontSize: 30, fontFamily: 'Freder'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  margin: EdgeInsets.all(15),
                  height: 100.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xcc49547A),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Fashion()));
                  });
                },
                child: Container(
                  child: Center(
                    child: Text(
                      'Fashion',
                      style: TextStyle(fontSize: 30, fontFamily: 'Freder'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  margin: EdgeInsets.all(15),
                  height: 100.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xcc49547A),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
