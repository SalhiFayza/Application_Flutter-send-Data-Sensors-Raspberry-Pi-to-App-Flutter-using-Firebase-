import 'package:assistantapp/DataAcp.dart';

import 'package:assistantapp/InfoPlants.dart';
import 'package:assistantapp/InfoFishes.dart';

import 'package:assistantapp/Settingss.dart';
import 'package:assistantapp/application1_icons.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'application1_icons.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DataHm extends StatefulWidget {
  @override
  _Data createState() => _Data();
}

class _Data extends State<DataHm> with SingleTickerProviderStateMixin {
  TabController _tabController;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  Future<Null> refreshList() async {
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: RefreshIndicator(
          onRefresh: refreshList,
          child: DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("HomePage");
                    },
                  ),
                  title: Text('Data For Aquaponics'),
                  centerTitle: true,
                  actions: [
                    IconButton(
                      icon: Icon(Icons.logout, color: Color(0xFF545D68)),
                      onPressed: () async {
                        SharedPreferences preferences =
                            await SharedPreferences.getInstance();
                        preferences.remove("fist");
                        _auth.signOut();
                        Navigator.of(context).pushReplacementNamed("Start");
                      },
                    ),
                  ],
                  flexibleSpace: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.teal[50],
                          Colors.teal[100],
                          Colors.teal[200]
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                    ),
                  ),
                  bottom: TabBar(
                      labelColor: Colors.black,
                      indicatorColor: Colors.white,
                      indicatorWeight: 5,
                      tabs: [
                        Tab(icon: Icon(Icons.home), text: 'Home'),
                        Tab(icon: Icon(Application1.fish), text: 'Fishes'),
                        Tab(icon: Icon(Application1.barley), text: 'Plants'),
                        Tab(icon: Icon(Icons.settings), text: 'Settings'),
                      ])),
              body: TabBarView(
                children: <Widget>[
                  DataAcp(),
                  InfiFishes(),
                  InfoPlants(),
                  Settingss(),
                ],
              ),
            ),
          ),
        ));
  }
}
