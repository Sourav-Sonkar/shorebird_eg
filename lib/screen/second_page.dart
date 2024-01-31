import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Pages contains 3 boxes."),
            Container(
              height: 600, // Fixed height
              width: double.infinity,
              color: Colors.blue,
              child: const Text(
                'Text 1',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              height: 400, // Fixed height
              width: double.infinity,
              color: Colors.green,
              child: const Text(
                'Text 2',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              height: 100, // Fixed height
              width: double.infinity,
              color: Colors.red,
              child: const Text(
                'Text 3',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
    );
  }
}
