import 'package:dice_game/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.white,
        color2 = Colors.pinkAccent;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: startAlignment,
            colors: [color1, color2],
            end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller()
      ),
    );
  }
}