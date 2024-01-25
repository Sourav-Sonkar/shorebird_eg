import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        'https://repository-images.githubusercontent.com/279611541/b7e1e580-c611-11ea-9b24-523c65baea0e',
        fit: BoxFit.contain,
      ),
    );
  }
}
