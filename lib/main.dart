import 'package:flutter/material.dart';
import 'package:intro_ui/intros/page1.dart';
import 'package:intro_ui/intros/page2.dart';
import 'package:intro_ui/intros/page3.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();

    return PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: const [
        Page1(),
        Page2(),
        Page3(),
      ],
    );
  }
}
