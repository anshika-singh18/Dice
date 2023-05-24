import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[900],
        appBar: AppBar(
          title: Center(
          child: Text(
            'Dice',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
          ),
          ),
          ),
          backgroundColor: Colors.lime[600],
        ),
        body: DicePage(),
      ),
      debugShowCheckedModeBanner: false,
    )
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int leftdice = 1;
  int rightdice =1;

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // flex: 2,
            child: TextButton(
              onPressed: () {
                setState((){
                  leftdice = Random().nextInt(6) + 1;
                  rightdice = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftdice.png'),),
          ),
          Expanded(
            // flex: 1,
            child: TextButton(
              onPressed: () {
                setState((){
                  rightdice = Random().nextInt(6) + 1;
                  leftdice = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightdice.png'),
            ),
          ),
        ],
      ),
    );
  }
}




