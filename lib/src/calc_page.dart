import 'package:calculadora/src/controller/calc_controller.dart';
import 'package:calculadora/src/widgets/button_hub.dart';
import 'package:calculadora/src/widgets/display.dart';
import 'package:flutter/material.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  final controller = CalcController();

  void _listner() {
    setState(() {});
  }

  void initState() {
    super.initState();
    controller.addListener(_listner);
  }

  void dispose() {
    controller.removeListener(_listner);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(flex: 1, child: DisplayCalc(value: controller.display)),
          Expanded(
              flex: 3,
              child: ButtonHub(
                onButtonClick: controller.onButtonClick,
              )
          )
        ],
      ),
    );
  }
}
