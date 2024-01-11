import 'package:flutter/material.dart';
import 'src/calc_page.dart';

void main(List<String> args) {
  runApp(const MainAPP());
}

class MainAPP extends StatelessWidget {
  const MainAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: const CalcPage(),
    );
  }
}