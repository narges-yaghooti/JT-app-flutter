import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  AppText({
    super.key,
    this.size = 16,
    this.color = Colors.black54,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
    text,
    style: TextStyle(
      fontSize: size,
      color: color,
    ),
    );
  }
}
