import 'package:flutter/material.dart';


void showSnackbar(BuildContext context) {
  var snackbar = SnackBar(content: Text("Enter the Details please"));
  Scaffold.of(context).showSnackBar(snackbar);
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final UserName = TextField(
      decoration: InputDecoration(
          hintText: 'Username',
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final Email = TextField(
      decoration: InputDecoration(
          hintText: 'Email',
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final Password = TextField(
      decoration: InputDecoration(
          hintText: 'Password',
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final SignupButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        onPressed: () {
          Navigator.pop(context);
        },
        minWidth: MediaQuery.of(context).size.width * .60,
        child: Text('Register',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * .45,
                height: MediaQuery.of(context).size.width * .45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "images/logo_transparent.png",
                    ),
                  ),
                ),
              ),
              UserName,
              SizedBox(height: 25.0),
              Email,
              SizedBox(
                height: 35.0,
              ),
              Password,
              SizedBox(
                height: 35.0,
              ),
              SignupButton,
            ],
          ),
        ),
      ),
    );
  }
}
