import 'package:flutter/material.dart';
import 'package:roll_dice_1/gradientstyle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: GradientStyle(Color.fromARGB(255, 144, 180, 145),
              Color.fromARGB(255, 12, 75, 14)),
        ),
      ),
    );
  }
}
