import "package:flutter/material.dart";

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[300],
      body: const Center(
        child: Text(
          "Page2",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
