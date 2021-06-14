import 'package:assistantapp/HomePage.dart';
import 'package:assistantapp/DataHm.dart';
import 'package:assistantapp/Start.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:assistantapp/Login.dart';
import 'package:flutter/material.dart';
import 'package:assistantapp/SignUp.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:assistantapp/Start.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.greenAccent),
      home: Start(),
      routes: <String, WidgetBuilder>{
        "Login": (BuildContext context) => Login(),
        "SignUp": (BuildContext context) => SignUp(),
        "HomePage": (BuildContext context) => HomePage(),
        "Dht22": (BuildContext context) => DataHm(),
      },
    );
  }
}
