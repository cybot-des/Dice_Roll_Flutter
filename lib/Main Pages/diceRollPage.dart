import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoll extends StatefulWidget {
  const DiceRoll({Key? key}) : super(key: key);

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                  onPressed: () {
                    setState((){
                      leftDiceNumber = Random().nextInt(6)+1;
                      rightDiceNumber = Random().nextInt(6)+1;
                    });
                  })),
          Expanded(
              child: FlatButton(
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                  onPressed: () {
                    setState((){
                      leftDiceNumber = Random().nextInt(6)+1;
                      rightDiceNumber = Random().nextInt(6)+1;
                    });
                  }))
        ],
      ),
    );
  }
}


class DiceRollPage extends StatelessWidget {
  //const diceRollPage({Key? key}) : super(key: key);
  int leftDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                  onPressed: () {
                    leftDiceNumber = 3;
                    print(leftDiceNumber);
                  })),
          Expanded(
              child: FlatButton(
                  child: Image.asset('images/dice2.png'), onPressed: () {}))
        ],
      ),
    );
  }
}
