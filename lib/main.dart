import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Raleway'),
            ),
          ),
        ),
        body: magicballstate(),
      ),
    );
  }
}

class magicballstate extends StatefulWidget {


  @override
  State<magicballstate> createState() => _magicballstateState();
}

class _magicballstateState extends State<magicballstate> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                ballnumber = Random().nextInt(5) + 1;
              });
            },
            child: CircleAvatar(
              backgroundImage: AssetImage('images/ball$ballnumber.png'),
              radius: 200,
            ),
          ),
        ],
      ),
    );
  }
}
