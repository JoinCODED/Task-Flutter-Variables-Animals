import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start, // <- Here
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/animal.jpg",
              width: 200,
              height: 200,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Container(
                  color: Colors.amber,
                  margin: EdgeInsets.only(left: 40),
                  child: Text("Name: Panda"),
                ),
                Container(
                  color: Colors.teal,
                  margin: EdgeInsets.only(left: 40),
                  child: Text("Age: 3"),
                ),
                Container(
                  color: Colors.deepOrangeAccent,
                  margin: EdgeInsets.only(left: 40),
                  child: Text("Gender: Male"),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
