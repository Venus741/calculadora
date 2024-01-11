import 'package:flutter/material.dart';

class DisplayCalc extends StatelessWidget {
  final String value;
  const DisplayCalc({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text(value, style: Theme.of(context).textTheme.displayLarge ,),
      ),

    );
  }
}
