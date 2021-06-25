import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class DataAcp extends StatefulWidget {
  @override
  _DataAcp createState() => _DataAcp();
}

class _DataAcp extends State<DataAcp> {
  String temperature;
  String humidity;
  String waterTemp;
  String pH;

  final databaseRef = FirebaseDatabase.instance.reference();

  @override
  void initState() {
    super.initState();
    databaseRef.child('DATA').onValue.listen((event) {
      setState(() {
        humidity = event.snapshot.value['Humidity']['Data'];
        temperature = event.snapshot.value['Temperature']['Data'];
        waterTemp = event.snapshot.value['WaterTemp']['Data'];
        pH = event.snapshot.value['pH']['Data'];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment(0.0, 1.0),
            child: SizedBox(
              height: 130,
              width: 10,
              child: OverflowBox(
                minWidth: 0.0,
                maxWidth: MediaQuery.of(context).size.width,
                minHeight: 0.0,
                maxHeight: (MediaQuery.of(context).size.height / 4),
                child: Stack(children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    width: 400,
                    height: 90,
                    child: Card(
                      child: Center(
                          child: Row(
                        children: <Widget>[
                          Image(
                            image: AssetImage("images/temperature.png"),
                            height: 50,
                            width: 60,
                          ),
                          SizedBox(width: 20),
                          Text(
                            "Temperature:$temperature",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontStyle: FontStyle.italic),
                          )
                        ],
                      )),
                      color: Colors.teal[50],
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
          SizedBox(height: 30),
          Align(
            alignment: Alignment(0.0, 1.0),
            child: SizedBox(
              height: 10,
              width: 10,
              child: OverflowBox(
                minWidth: 0.0,
                maxWidth: MediaQuery.of(context).size.width,
                minHeight: 0.0,
                maxHeight: (MediaQuery.of(context).size.height / 4),
                child: Stack(children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    width: 400,
                    height: 90,
                    child: Card(
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            Image(
                              image: AssetImage("images/humidity.png"),
                              height: 50,
                              width: 60,
                            ),
                            SizedBox(width: 20),
                            Text(
                              "Humidity: $humidity",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic),
                            )
                          ],
                        ),
                      ),
                      color: Colors.teal[50],
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
          SizedBox(height: 100),
          Align(
            alignment: Alignment(0.0, 1.0),
            child: SizedBox(
              height: 10,
              width: 10,
              child: OverflowBox(
                minWidth: 0.0,
                maxWidth: MediaQuery.of(context).size.width,
                minHeight: 0.0,
                maxHeight: (MediaQuery.of(context).size.height / 4),
                child: Stack(children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    width: 400,
                    height: 90,
                    child: Card(
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            Image(
                              image: AssetImage("images/tempeau.png"),
                              height: 50,
                              width: 60,
                            ),
                            SizedBox(width: 20),
                            Text(
                              "WaterTemp: $waterTemp",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic),
                            )
                          ],
                        ),
                      ),
                      color: Colors.teal[50],
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
          SizedBox(height: 100),
          Align(
            alignment: Alignment(0.0, 1.0),
            child: SizedBox(
              height: 10,
              width: 10,
              child: OverflowBox(
                minWidth: 0.0,
                maxWidth: MediaQuery.of(context).size.width,
                minHeight: 0.0,
                maxHeight: (MediaQuery.of(context).size.height / 4),
                child: Stack(children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    width: 400,
                    height: 90,
                    child: Card(
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            Image(
                              image: AssetImage("images/ph.png"),
                              height: 50,
                              width: 60,
                            ),
                            SizedBox(width: 20),
                            Text(
                              "pH: $pH",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic),
                            )
                          ],
                        ),
                      ),
                      color: Colors.teal[50],
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
