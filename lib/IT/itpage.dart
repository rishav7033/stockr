import 'package:flutter/material.dart';
import 'package:stockr/IT/apple.dart';
import 'microsoft.dart';

class ITCompanies extends StatefulWidget {
  @override
  _ITCompaniesState createState() => _ITCompaniesState();
}

class _ITCompaniesState extends State<ITCompanies> {
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
                    MaterialPageRoute(builder: (context) => microsoft()));
              });
            },
            child: Container(
              child: Center(
                child: Text(
                  'APPLE',
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
                    context, MaterialPageRoute(builder: (context) => Apple()));
              });
            },
            child: Container(
              child: Center(
                child: Text(
                  'APPLE',
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
