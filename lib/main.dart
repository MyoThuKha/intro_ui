import 'package:flutter/material.dart';
import 'package:intro_ui/intros/page1.dart';
import 'package:intro_ui/intros/page2.dart';
import 'package:intro_ui/intros/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            children: const [
              Page1(),
              Page2(),
              Page3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () => controller.jumpToPage(2),
                  child: const Text(
                    "skip",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    dotWidth: 14,
                  ),
                ),
                TextButton(
                  onPressed: () => controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn),
                  child: const Text(
                    "next",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
