import "package:flutter/material.dart";

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: const Center(
        child: Text(
          "Page1",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
