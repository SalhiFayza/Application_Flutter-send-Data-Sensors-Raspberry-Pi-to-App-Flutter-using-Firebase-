import 'package:assistantapp/HomePage.dart';
import 'package:assistantapp/DataHm.dart';
import 'package:assistantapp/Start.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:assistantapp/Login.dart';
import 'package:flutter/material.dart';
import 'package:assistantapp/SignUp.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  runApp(MyApp(preferences.containsKey("fist")));
}

class MyApp extends StatelessWidget {
  bool check;
  MyApp(bool check) {
    this.check = check;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.greenAccent),
      home: checkLog(),
      routes: <String, WidgetBuilder>{
        "Login": (BuildContext context) => Login(),
        "Start": (BuildContext context) => Start(),
        "SignUp": (BuildContext context) => SignUp(),
        "HomePage": (BuildContext context) => HomePage(),
        "Dht22": (BuildContext context) => DataHm(),
      },
    );
  }

  Widget checkLog() {
    if (!check)
      return Start();
    else
      return HomePage();
  }
}
