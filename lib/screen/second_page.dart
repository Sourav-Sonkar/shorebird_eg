import 'package:flutter/material.dart';
import 'package:shorebird_eg/widget/skeleton_container.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildSkeletonContainer(width: double.infinity, height: 200.0),
        const SizedBox(height: 16.0),
        buildSkeletonContainer(width: double.infinity, height: 50.0),
        const SizedBox(height: 16.0),
        buildSkeletonContainer(width: double.infinity, height: 100.0),
      ],
    );
  }
}
