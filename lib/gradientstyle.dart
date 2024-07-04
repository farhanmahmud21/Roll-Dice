import 'package:flutter/material.dart';
import 'package:roll_dice_1/diceroll.dart';

class GradientStyle extends StatelessWidget {
  const GradientStyle(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
