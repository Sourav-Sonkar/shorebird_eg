import 'package:flutter/material.dart';

Widget buildSkeletonContainer({double? width, double? height}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Colors.grey[300],
      borderRadius: BorderRadius.circular(8.0),
    ),
  );
}
