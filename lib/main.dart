import 'package:flutter/material.dart';

import 'Main Pages/diceRollPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice Roll', textAlign: TextAlign.center, style: TextStyle(color: Colors.black87),),
          backgroundColor: Colors.amber,
        ),
        backgroundColor: Colors.amber[100],
        body: DiceRoll(),
      ),
    );
  }
}

