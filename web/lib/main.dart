import 'package:assistantapp/HomePage.dart';
import 'package:assistantapp/Data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Start.dart';
import 'package:assistantapp/Login.dart';
import 'package:flutter/material.dart';
import 'package:assistantapp/SignUp.dart';
import 'package:assistantapp/InfoFishes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
        "Dht22": (BuildContext context) => Data(),
      },
    );
  }
}
