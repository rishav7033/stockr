import 'package:flutter/material.dart';
import 'package:stockr/Bank/fnbcorporation.dart';
import 'package:stockr/Bank/hawaiibank.dart';

class Bank extends StatefulWidget {
  @override
  _BankState createState() => _BankState();
}

class _BankState extends State<Bank> {
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
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 24.0, bottom: 24),
            child: Container(
              width: double.infinity,
              child: Text(
                'COMPANIES',
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
                    MaterialPageRoute(builder: (context) => HawaiiBank()));
              });
            },
            child: Container(
              child: Center(
                child: Text(
                  'Bank of Hawaii Corporation',
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
                    MaterialPageRoute(builder: (context) => FnBcorporation()));
              });
            },
            child: Container(
              child: Center(
                child: Text(
                  'F.N.B Corporation',
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
        ],
      ),
    );
  }
}
