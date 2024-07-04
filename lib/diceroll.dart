import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 'assets/images/dice-1.png';

  void roll() {
    setState(() {
      var currentDice = Random().nextInt(6) + 1;
      activeDice = 'assets/images/dice-$currentDice.png';
    });
  }

  @override
  //var  activeDice = 'assets/dice-1.png';
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeDice,
          width: 300,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: roll,
            child: const Text(
              'Roll Dice',
              style: TextStyle(color: Colors.amber),
            ))
      ],
    );
  }
}
