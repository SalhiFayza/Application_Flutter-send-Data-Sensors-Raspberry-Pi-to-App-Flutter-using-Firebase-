import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool isloggedin = false;
  User user;
  checkAuthentification() async {
    _auth.authStateChanges().listen((user) {
      if (user == null) {
        Navigator.of(context).pushReplacementNamed("start");
      }
    });
  }

  getUser() async {
    User firebaseUser = _auth.currentUser;
    await firebaseUser?.reload();
    firebaseUser = _auth.currentUser;

    if (firebaseUser != null) {
      setState(() {
        this.user = firebaseUser;
        this.isloggedin = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    this.checkAuthentification();
    this.getUser();
  }

  navigateToVoice() async {
    Navigator.of(context).pushReplacementNamed("Dht22");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
            SizedBox(height: 40),
            Container(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/Aquaponics.png"),
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 45),
            Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: RichText(
                      text: TextSpan(
                    text:
                        "Hello ${user.displayName} you are Logged in as ${user.email}",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[300],
                    ),
                  )),
                ))
          ])),
      bottomNavigationBar: Container(
          // ignore: deprecated_member_use
          padding: EdgeInsets.only(left: 50, right: 50, bottom: 50),
          // ignore: deprecated_member_use
          child: RaisedButton(
            padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
            onPressed: navigateToVoice,
            child: Text('Get Started',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic)),
            color: Colors.teal[300],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          )),
    );
  }
}
