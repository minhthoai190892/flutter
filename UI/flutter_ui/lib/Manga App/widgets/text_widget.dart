import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final int? maxline;

  final FontWeight fontWeight;
  const TextWidget({
    super.key,
    required this.text,
    this.color = Colors.white,
    this.size = 16,
    this.fontWeight = FontWeight.normal,
    this.maxline,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 2,
      text,
      style: TextStyle(color: color, fontSize: size, fontWeight: fontWeight),
    );
  }
}
