import 'package:banking_card/src/PrivateDate.dart';
import 'package:flutter/material.dart';
import 'package:banking_card/src/HeaderWidget.dart';
import 'package:flutter/material.dart';
import 'package:banking_card/src/MasterCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Circular"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Container(
            height: 120,
            child: HeaderWidget(),
          ),
          Expanded(child: MasterCard()),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
