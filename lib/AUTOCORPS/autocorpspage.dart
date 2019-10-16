import 'package:flutter/material.dart';
import 'package:stockr/AUTOCORPS/ford.dart';
import 'package:stockr/AUTOCORPS/tractorsupplycompany.dart';

class AutoCorps extends StatefulWidget {
  @override
  _AutoCorpsState createState() => _AutoCorpsState();
}

class _AutoCorpsState extends State<AutoCorps> {
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TractorSupplyCompany()));
              });
            },
            child: Container(
              child: Center(
                child: Text(
                  'Tractor Supply Company',
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
                    context, MaterialPageRoute(builder: (context) => Ford()));
              });
            },
            child: Container(
              child: Center(
                child: Text(
                  'Ford',
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
