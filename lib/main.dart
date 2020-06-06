import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int lDie = 1;
  int rDie = 1;
  void update() {
    setState(() {
      lDie = Random().nextInt(6) + 1;
      rDie = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                update();
              },
              child: Image.asset('images/dice$lDie.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                update();
              },
              child: Image.asset('images/dice$rDie.png'),
            ),
          ),
        ],
      ),
    );
  }
}
