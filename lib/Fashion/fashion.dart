import 'package:flutter/material.dart';
import 'package:stockr/Fashion/Chico.dart';
import 'package:stockr/Fashion/genesco.dart';

class Fashion extends StatefulWidget {
  @override
  _FashionState createState() => _FashionState();
}

class _FashionState extends State<Fashion> {
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
                    MaterialPageRoute(builder: (context) => Genesco()));
              });
            },
            child: Container(
              child: Center(
                child: Text(
                  'Genesco, Inc',
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Chico()));
              });
            },
            child: Container(
              child: Center(
                child: Text(
                  "Chico's Fas, Inc",
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
